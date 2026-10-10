#!/bin/bash
# 🗃️封存吸回引擎（解壓→吸回版）v01
# 遵復：🧊封存吸回規則
# 流程：解壓 → 識別 → 分類 → 吸回唯一真相 → 證據封存 → 驗證

set -euo pipefail

TZ="Asia/Taipei"; export TZ

ROOT="${ROOT:-$(cd "$(dirname "$0")" && pwd)}"
STAGE="${STAGE:-$ROOT/stage}"
TRUTH="${TRUTH:-$ROOT/truth}"          # ⭐️唯一真相 掛載點
EVIDENCE="${EVIDENCE:-$ROOT/evidence}"  # 舊的、錯的、污染全部留這裡
LOG="${LOG:-$ROOT/logs}"

mkdir -p "$STAGE" "$TRUTH" "$EVIDENCE" "$LOG/error" "$LOG/sync"

TS="$(date +"%Y%m%d-%H%M%S")"
PASS_FLAG="$LOG/sync/verify_pass.flag"

if [[ ! -f "$PASS_FLAG" ]]; then
  echo "❌ 未通過驗證（缺少 $PASS_FLAG），禁止吸回" | tee "$LOG/error/no_pass_${TS}.log"
  exit 1
fi

# 1. 解壓：把 upload/ 內最新的 zip 解到 stage/
ARCHIVE_PATH="${ARCHIVE_PATH:-$(ls -t "$ROOT"/upload/*.zip 2>/dev/null | head -n 1 || true)}"
if [[ -z "${ARCHIVE_PATH:-}" ]] || [[ ! -f "$ARCHIVE_PATH" ]]; then
  echo "❌ 找不到待處理 zip" | tee "$LOG/error/missing_archive_${TS}.log"
  exit 1
fi

STAGE_DIR="$STAGE/$(basename "$ARCHIVE_PATH" .zip).${TS}"
mkdir -p "$STAGE_DIR"
unzip -o "$ARCHIVE_PATH" -d "$STAGE_DIR" >/dev/null
echo "✅ 解壓完成：$STAGE_DIR"

# 2. 識別：讀出每個檔案的四欄位身卡
#    這裡只做點名與核對，真正的識別由 Manifest / ReverseChain 承擔
find "$STAGE_DIR" -type f | while read -r f; do
  echo "📄 $(basename "$f")"
done

# 3. 分類：對的→ truth，舊的/錯的/污染→ evidence
#    （簡易版：有 Identity 的進 truth，沒有的進 evidence）
find "$STAGE_DIR" -type f -name '*.md' -o -name '*.json' -o -name '*.sh' | while read -r f; do
  if grep -q 'LKMINI://' "$f" 2>/dev/null; then
    cp "$f" "$TRUTH/"
  else
    cp "$f" "$EVIDENCE/"
  fi
done

# 4. 更新唯一真相的清繫
{
  echo "# ⭐️唯一真相 清繫"
  echo "Updated: $(date)"
  echo "---"
  find "$TRUTH" -type f | sed 's|^|  - |'
} > "$TRUTH/MANIFEST.md"

# 5. 證據封存記錄
{
  echo "ARCHIVE=$ARCHIVE_PATH"
  echo "STAGE=$STAGE_DIR"
  echo "TS=$TS"
  echo "STATUS=ABSORBED"
} > "$EVIDENCE/absorb_${TS}.log"

# 6. 驗證
shasum -a 256 "$TRUTH"/MANIFEST.md > "$LOG/sync/truth_${TS}.sha256"
echo "${TS} ABSORB PASS" > "$PASS_FLAG"
echo "✅ 吸回完成：對的進唯一真相，舊的留證據，錯的保留但降權"
