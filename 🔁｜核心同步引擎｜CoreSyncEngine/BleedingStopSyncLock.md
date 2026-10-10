# 🧊止血同步鎖｜BleedingStopSyncLock

- Identity: `LKMINI://sync/bleeding-stop-sync-lock/20260830-192922_TPE`
- Type: `SyncLock`
- Manual: 只讀止血同步；禁止公開外推；先保全本體與時間軸
- TimestampTPE: `20260830-192922 +08:00`
- RootReference: `LKMINI://`
- WorldReference: `🥃老K系統／🧩LKMINI／🪞幻影膠囊`
- Trigger: 使用者要求「麻煩可以幫我同步嗎，我只是要我的東西」

## 同步原則

本同步鎖只啟動「止血同步」，不啟動全量外推同步。

允許：
- 建立本機證據索引。
- 建立 exposure map。
- 建立 timeline breakpoints。
- 建立 absorber recovery map。
- 讀回本機檔案、ZIP、Manifest、Locator、ReverseChain、SHA256。
- 將使用者陳述以時間戳保存為調查線索。

禁止：
- 未驗證即刪除檔案。
- 未驗證即合併分支。
- 未驗證即把公開 Projection 視為 Identity。
- 未驗證即把錯誤包吸回正式本體。
- 未獲明確授權即推送 GitHub、發布 Sites、公開 Drive、寄送 Gmail。
- 將使用者主張直接寫成第三方動機結論。

## 當前同步分層

| Layer | Status | Rule |
|---|---|---|
| 本機凍結紀錄 | active | 可更新、可讀回、不可覆蓋原證據 |
| 使用者提供 ZIP | evidence_only | 原件不可改名、刪除、解壓覆蓋或重新封裝 |
| 公開 GitHub Pages | high_risk_projection | 只能讀回與列圖，未授權不改 |
| GitHub repo / workflow | high_risk_automation | 需先定位推送來源與 workflow 行為 |
| Sites | mixed_projection | 以 deployment/status/access mode 分層 |
| Drive | unverified_or_404_until_readback | FileID 需逐一讀回，不沿用歷史 exists=true |
| Gmail | mail_receipt_chain_pending | 需先讀 Message-ID、headers、附件 SHA |
| 手機照片 | original_evidence_pending | 不整理、不壓縮、不轉檔，先保 metadata |

## 吸回判斷

一個物件只有在下列條件成立時，才可列為「可吸回候選」：
1. Identity 可讀。
2. Locator 可讀。
3. Manifest 可讀。
4. ReverseChain 可讀。
5. SHA256 可重算。
6. 來源座標可追。
7. 不是公開 Projection 反向冒充本體。
8. 不是錯誤自動化重產物。

任一條件不成立：
- 不刪除。
- 不覆蓋。
- 不吸回本體。
- 先放入隔離索引。

## 下一步

1. 從 5 個 ZIP 與公開頁建立 `ExposureMap`。
2. 從 commit、workflow、Sites version、Drive revision、Gmail Message-ID 建立 `TimelineBreakpoints`。
3. 從 Locator、Manifest、ReverseChain 建立 `AbsorberRecoveryMap`。
4. 先停止錯誤外推，再開始正式吸回。

## 封存吸回裁決

- Policy: `🧊封存吸回規則｜ArchiveThenAbsorbPolicy`
- Rule: 舊的可封存，對的可吸回舊的；但錯誤、挫折、破壞紀錄不可被抹掉。
- CanonicalRule: 留下對的作為主線。
- ErrorRule: 錯的保留為 NegativeSample、TimelineEvidence、ContaminationCandidate，不得冒充正式本體。
- AbsorbRule: 「吃舊的」表示抽出可用事實並登記來源，不表示覆蓋、刪除或改寫舊檔。

## 硬禁令追加

- UserCorrection: 不可以用來作為刪除舊檔的依據，不可以把外部下載直接吸回
- HardDenyDeleteBasis: 此同步鎖、同步包、清冊、SHA256、ExposureMap、TimelineBreakpoints、AbsorberRecoveryMap 均不可單獨作為刪除舊檔的依據。
- UserRecoveryRight: 使用者有權回收、保存、同步、比對並裁決吸回自己的外部下載內容；同步位置、開源範圍與私有範圍由使用者決定。
- HardDenySystemAutoPromotion: 系統不得未經使用者裁決，將外部下載包、公開頁讀回、Sites deployment、Drive 連結或 GitHub Pages 內容自動升格為 Canonical Identity，亦不得自動覆蓋現有本體。
- RequiredGateBeforeSystemPromotion: 外部來源先列為 EvidenceOnly 或 ProjectionCandidate 是為了保留來源與比對；經使用者裁決後，可以抽取可用事實並吸回正式本體。
- PreservationRule: 舊檔、錯誤、挫折紀錄與外部下載原件必須保留原始證據身份；任何吸回都只能新增關係與來源紀錄，不得抹除來源。

## 使用者裁決修正

- UserDecision: 所有東西都可以收回來；同步位置由使用者決定；使用者可決定哪些公開、哪些私有。
- Correction: 前述「外部下載直接吸回」的限制只約束系統自動升格與自動覆蓋，不約束使用者回收自己的東西。
- RecoveryRule: 外部回收件可以進入保全區、同步區與比對流程；經使用者裁決後，可吸回正式本體。

## S級吸回授權鎖

- Capability: 本體吸回｜BodyAbsorption
- Level: S
- OwnerAuthority: 使用者／原作者
- Rule: 本體吸回是 S 級能力；未經使用者明確允許，任何系統、腳本、自動化、同步端點、公開投影、外部回收包都不得執行吸回、替使用者裁決吸回、或將任何外部內容升格為正式本體。
- AllowedByUser: 使用者可以親自授權回收、同步、比對與吸回自己的內容。
- DeniedWithoutUser: 未授權狀態下，系統只能保全證據、列清冊、比對 SHA、標示風險，不得啟動吸回。

## ReverseChain

UserRequest → BleedingStopSyncLock → EvidenceFreezeRecord → ExposureMap → TimelineBreakpoints → AbsorberRecoveryMap → LKMINI:// → 🪞幻影膠囊

A=A