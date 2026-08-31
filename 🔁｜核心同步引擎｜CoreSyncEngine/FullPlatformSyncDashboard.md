# 🌐全平台同步看板｜FullPlatformSyncDashboard

任務：🛕全部副檔名祭祀總廟｜AllExtensionRitualWindowsTemple
同步回執修正時間：20260707-174807_TPE
RootSHA256：6c0f6f487d8af27de4a8cee9f3fc853f0fbcf417cbd21acb56ac65c55adfcf34

## 同步裁決

```text
同步不是口頭同步。
同步必須可見、可查、可回推、可驗證。
```

## 同步總表

| 平台 | 同步狀態 | 同步型態 | 位置/證據 | 可回推狀態 | mini＋永恆核心 | 缺口 |
|---|---|---|---|---|---|---|
| ChatGPT 對話內 | ✅完整交付 | ZIP / HTML / SVG / CSV / XLSX / MD / JSON / Manifest / SHA | 對話內 sandbox 檔案；外部 .sha256 存放最終 ZIP SHA | 可回推 | 已掛 mini＋永恆核心 | 無 |
| Google 雲端硬碟 | ✅文件投影同步 | Google Doc | docs.google.com | 可讀投影；完整 ZIP 在對話內 | 已寫入 RootSHA256 與裁決 | upload_file 不接受本機路徑，改用原生 Google Doc 投影 |
| Goodnotes | ✅文件投影同步 | Goodnotes Markdown Widget | 對話內已顯示 Goodnotes 文件投影 | 可視投影 | 已寫入 RootSHA256 與裁決 | 工具未回傳永久 URL |
| GitHub | ✅文字投影同步 | Markdown 同步投影 | repo=ky46738-ops/oldk-lkmini-eternal-core-cross-optimize；最終 commit 見對話回執 | 可回推到 commit | 已寫入 RootSHA256 與裁決 | GitHub 文字工具不適合直接上傳完整 ZIP |
| Apple 備忘錄 | ⚫平台限制待補 | 備忘錄貼上版 TXT | 本包內已建立貼上版 | 可手動貼回 | 已寫入 RootSHA256 與裁決 | 目前沒有 Apple Notes 直接寫入工具 |

## SHA 放置原則

```text
主 ZIP 內部不寫自己的 ZIP SHA。
最終 ZIP SHA 放在外部 .sha256 檔與對話回執。
避免自我引用導致每次打包 SHA 改變。
```

A=A