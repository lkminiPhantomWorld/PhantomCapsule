# 🧰單純工具箱 CALL SPEC（極純）

Version: v02  
Time: 20251230-164719_TPE (Asia/Taipei)  
Namespace: `LKSystem://PhantomCapsule`  
Root: `LKMINI://`  
Axiom: A=A

---

## Purpose

- 主控／工作模式以「唯一路徑 + SHA256」方式呼叫工具模組
- 定義「條件呼叫」與「回傳格式」，保持只讀與可驗證

---

## Inputs (from controller)

| Field | Type | Description |
|-------|------|-------------|
| `tool_path` | string | e.g., `TOOLS/<file>` |
| `action` | string | e.g., `read`, `render`, `export` |
| `params` | object | action-specific (optional) |
| `expect_sha256` | string | optional; if provided, must match MANIFEST.csv |

---

## Hard Rules

1. **Read-only**: 不得改寫 `TOOLS/` 內任何檔案（含覆蓋、就地更新、刪除）
2. **Verify-first**: 呼叫前必須以 `MANIFEST.csv` 驗證 sha256
3. **Fail-closed**: 驗證不通過或路徑不存在 → 立即中止，不做降級推測

---

## Conditional Call (gating)

**Condition A — Integrity:**
- If `expect_sha256` provided:
  - require `expect_sha256 == manifest_sha256(tool_path)`
- Else:
  - require `manifest_sha256(tool_path)` exists

**Condition B — Action allowlist:**
- `action` must be one of: `read` | `render` | `export`

**Condition C — Params schema:**
- `params` is optional; if present must be JSON-serializable

---

## Call Steps

| Step | Description |
|------|-------------|
| 1 | Resolve absolute path under toolbox root — must start with `TOOLS/` |
| 2 | Lookup `MANIFEST.csv` record for `tool_path` |
| 3 | SHA256 verify |
| 4 | Execute action in read-only mode |
| 5 | Return structured response |

---

## Return Format (to controller)

| Field | Type | Description |
|-------|------|-------------|
| `status` | string | `ok` \| `blocked` \| `error` |
| `tool_path` | string | echoed from input |
| `sha256` | string | from MANIFEST.csv |
| `action` | string | echoed from input |
| `output_type` | string | `text` \| `binary` \| `path` \| `none` |
| `output` | string | text content OR relative_path (for binary/path) |
| `notes` | string | optional |
| `evidence.manifest_row` | string | exact CSV row: `filename,size,sha256,time_TPE` |

---

## Failure Handling

| Condition | Status | Reason |
|-----------|--------|--------|
| SHA256 mismatch | `blocked` | `sha256_mismatch` |
| Not found in MANIFEST | `blocked` | `not_indexed` |
| Path traversal attempt | `blocked` | `invalid_path` |
| Unsupported action | `blocked` | `unsupported_action` |
