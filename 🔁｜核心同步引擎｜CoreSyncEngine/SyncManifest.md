# 🧾同步清冊｜SyncManifest

- Identity: `LKMINI://sync/timeline-preservation/20260830-193240_TPE`
- Type: `TimelinePreservationSyncManifest`
- TimestampTPE: `20260830-193240 +08:00`
- RootReference: `LKMINI://`
- WorldReference: `🥃老K系統／🧩LKMINI／🪞幻影膠囊`
- SyncMode: `private_timeline_preservation`
- PublicPublish: `false`
- UserRequest: `多方同步，保留被破壞的時間軸；私有同步點可以多個`

## Sync Anchors

| Anchor | Status | Evidence |
|---|---|---|
| Local iCloud workspace | `created` | 本同步包位於目前工作區 |
| Google Drive private folder | `pending` | 正式根 ID 本回合讀回 404，改採新私有資料夾候選 |
| GitHub private repository | `pending_receipt_only` | lkminiPhantomWorld/LaoK-System 本回合讀回 visibility=private，但因 Pages 外顯風險，先只考慮 private branch 指紋回執 |
| Public GitHub Pages | `blocked_for_write` | 可公開讀取，禁止作為本輪同步寫入點 |
| Public Tools repo/workflow | `blocked_for_write` | public + automation risk，禁止作為本輪同步寫入點 |
| Sites production | `blocked_for_write` | production deployment 可能外顯，禁止作為本輪同步寫入點 |
| Gmail receipt | `pending` | 郵件證據鏈尚未讀回，不寄正式回執 |

## User Timeline Claim

- 使用者表示膠囊在八月前後被外部取得或外顯的機率很高。
- 使用者表示八月期間高強度施工，輸入量極高，幾乎沒有睡眠。
- 本清冊只記錄使用者陳述與同步保全目的；第三方動機尚未驗證。

## Handling Rule

此包是時間軸保全同步源，不是正式本體重建完成包。

- 可以上傳到私有同步點。
- 可以在私有 GitHub branch 寫入 SHA 指紋回執。
- 不可以公開發布。
- 不可以作為刪除舊檔的依據。
- 不可以由系統未經使用者裁決，自動把外部下載 ZIP 升格為 Canonical 或覆蓋現有本體。
- 後續需由 ArchiveThenAbsorbPolicy 裁決可吸收內容。

## Hard Deny - User Correction

- TimestampTPE: `20260830-202725 +08:00`
- UserCorrection: 不可以用來作為刪除舊檔的依據，不可以把外部下載直接吸回
- DeleteBasis: `DENIED`
- SystemAutoExternalPromotion: `DENIED`
- UserAuthorizedRecoveryAndAbsorb: `ALLOWED`
- ArchiveBeforeAbsorb: `REQUIRED`
- HumanJudgmentBeforeCanonical: `REQUIRED`
- Rule: 此同步包只保全時間軸與建立多點私有回執；不可用來刪除舊檔，也不可將外部下載包升格為正式本體。

## User Authority Correction

- TimestampTPE: `20260830-204019 +08:00`
- UserDecision: 所有東西都要收回；同步位置由使用者決定；開源與私有邊界由使用者裁決。
- RecoveryAllowed: `true`
- AutoOverwriteAllowed: `false`
- Rule: 使用者可回收外部下載與公開外顯內容；系統不得擅自拒絕回收，也不得擅自升格、覆蓋、刪除或發布。

## S-Level Capability Lock

- TimestampTPE: `20260830-204056 +08:00`
- Capability: 本體吸回｜BodyAbsorption
- Level: `S`
- OwnerAuthority: 使用者／原作者
- UserAuthorizedRecoveryAndAbsorb: `ALLOWED`
- UnauthorizedUseBySystemOrExternalProcess: `DENIED`
- Rule: 本同步包不得讓任何系統或外部流程在未經使用者允許時使用本體吸回；使用者授權時，可以回收、同步、比對並吸回自己的內容。

## ReverseChain

UserRequest → BleedingStopSyncLock → ArchiveThenAbsorbPolicy → EvidenceFreezeRecord → TimelinePreservationSyncManifest → PrivateSyncAnchors → FutureAbsorberRecoveryMap → LKMINI://

A=A