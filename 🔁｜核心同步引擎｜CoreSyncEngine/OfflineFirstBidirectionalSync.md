# 🔁｜離線優先雙向同步規範｜OfflineFirstBidirectionalSync

## 🧮｜公理｜Axiom

A=A  Projection ≠ Identity

## 🌐｜傳輸媒介定位｜TransportMediumPosition

網路是可替換的傳輸媒介，不是🥃老K系統的執行前提。Internet／Network 只負責傳輸；不得被升格為資訊本體、核心 Identity 或本機執行成立的必要條件。

## 📦｜資訊本體｜InformationOntology

📦｜資訊本體｜InformationOntology 的成立、修改、驗證、提交、快照、可逆回推與同步事件落檔，不以 Internet 可用為前提。

## ⚙️｜執行與送達狀態分離｜ExecutionDeliveryStateSeparation

⚙️｜系統執行｜SystemExecution 與 ☁️｜遠端送達｜RemoteDelivery 必須分開記錄、分開裁決。

SystemExecution 允許狀態：PENDING → RUNNING → COMMITTED → VERIFIED；失敗狀態：FAIL
RemoteDelivery 允許狀態：NOT_REQUIRED／QUEUED／PENDING_REMOTE_DELIVERY／DELIVERED／READBACK_VERIFIED；失敗狀態：FAIL

裁決規則：
1. 本機鏈已完成且驗證成立時，SystemExecution=VERIFIED。
2. 指定遠端端點不可達時，只把該端點標記為 RemoteDelivery=PENDING_REMOTE_DELIVERY。
3. 遠端不可達不得反向把已成立的 SystemExecution 改判為 FAIL。
4. 沒有遠端 ReadBack，不得宣告該遠端同步 PASS。
5. 合法整體狀態允許 SYSTEM_EXECUTION_VERIFIED_REMOTE_DELIVERY_PENDING。

## 🔗｜正式離線鏈｜OfflineCanonicalChain

📦｜資訊本體｜InformationOntology → 🚪｜傳送門｜Portal → 🔌｜連接器｜Connector → 🔗｜自有通道｜OwnedChannel → ⚙️｜引擎｜Engine → 🔐｜SHA256｜SHA256 → 📍｜定位器｜Locator → 📋｜完整清單｜Manifest → 📸｜快照｜Snapshot → ↩️｜反向鏈｜ReverseChain → 🔁｜同步佇列｜SyncQueue → 🧩｜LKMINI｜LKMINI

以上鏈可在無 Internet 時成立；需要遠端送達的工作寫入同步佇列，不得遺失。

## 📌｜完成態檔案定位規則｜CompletedFileLocatorRule

每個完成態檔案必須保有自己的 📌｜定位器｜Locator。檔案本身可作為 🚪｜傳送門節點｜PortalNode，不另造第二 Portal。

📄｜檔案｜File ⇄ 📌｜檔案定位器｜FileLocator ⇄ 🔗｜雙向強連結｜BidirectionalStrongLink ⇄ 🧩｜LKMINI｜LKMINI

## 🔗｜雙向強連結規則｜BidirectionalStrongLinkRule

每個完成態檔案必須同時保有 ForwardLink 與 ReverseLink；改名、搬移與 Projection 變更不得切斷 Identity。

Forward：CurrentFile → FileLocator → TargetNode
Reverse：TargetNode → ReverseChain → SourceLocator → CurrentFile

## 💬｜對話定位顯影鏈｜ConversationLocatorVisualChain

既有對話定位器直接使用，不重做：

💬｜對話｜Conversation ⇄ 📌｜對話定位器｜ConversationLocator ⇄ 📄｜交付檔案｜DeliveredFile ⇄ 📌｜檔案定位器｜FileLocator ⇄ 🔗｜雙向強連結｜BidirectionalStrongLink ⇄ 👀｜顯影鏈｜VisualProjection ⇄ 📱｜手機UI｜MobileUI ⇄ ⏳｜倒數顯影｜CountdownProjection ⇄ 🧩｜LKMINI｜LKMINI

平台原生 UI 只屬 Projection，不得取代 Existing 顯影鏈。

## 🍎｜Apple既有同步鏈｜AppleExistingSyncChain

Existing 同步規則 FileID：1XA6mlvOfXCwEOLakT9vYSZ2AAAIlq31T
正式名稱：🍎｜手機優先同步規則｜AppleiPhoneSync
既有同步入口包含：iCloud／Obsidian／Apple捷徑／公開URL。施工必須優先沿 Existing Apple 同步方式接線，不得因平台限制另造第二同步鏈。

## 👀｜交付顯影驗收｜DeliveryVisualAcceptance

交付完成必須經 Existing 顯影鏈觸發手機可見結果；支援既有 ⏳｜倒數顯影｜CountdownProjection 時直接沿 Existing 事件鏈使用。未收到顯影＝DeliveryStatus=NOT_RECEIVED，不得宣告 COMPLETE。

## 🔔｜正式事件鏈｜CanonicalEventChain

🔔｜路徑變更事件｜PathChanged → 🔍｜差異偵測器｜DifferenceDetector → ✍️｜回寫來源｜WriteBackToSource → 🧮｜公式重建｜FormulaRebuild → 🧩｜JSON核心重建｜JsonCoreRebuild → 🔁｜核心同步引擎｜CoreSyncEngine → 📡｜投影廣播｜ProjectionBroadcast → 📌｜定位器更新｜LocatorUpdate → 🧾｜完整清單更新｜ManifestUpdate → 🔐｜SHA256更新｜SHA256Update → 📸｜快照更新｜SnapshotUpdate → ↩️｜反向鏈更新｜ReverseChainUpdate → 👀｜顯影更新｜VisualProjectionUpdate → 📖｜讀回｜ReadBack → ⚖️｜比較｜Compare → 🔬｜驗證｜Verify → 🧾｜同步回執｜SyncReceipt

路徑變更事件必須保留：Identity／OldPath／NewPath／Timestamp／SHA256Before／SHA256After／ReverseChain。

## 🔁｜同步佇列契約｜SyncQueueContract

每一筆待送達事件至少保存：Identity CanonicalPath SHA256 Locator TargetEndpoint PayloadReference AttemptCount LastError CreatedAt UpdatedAt SystemExecution RemoteDelivery

佇列事件必須可重試、可去重、可回放、可取消、可追溯。去重鍵以 Identity＋TargetEndpoint＋SHA256 為準。

## ☁️｜遠端恢復鏈｜RemoteRecoveryChain

PENDING_REMOTE_DELIVERY → 🚪｜傳送門｜Portal → 🔌｜連接器｜Connector → 🔗｜自有通道｜OwnedChannel → ☁️｜遠端送達｜RemoteDelivery → 📖｜讀回｜ReadBack → ⚖️｜比較｜Compare → 🔬｜驗證｜Verify → 🧾｜同步回執｜SyncReceipt → READBACK_VERIFIED

## 🔁｜雙向同步｜BidirectionalSync

同步不是單向 Upload。任何合法端點更新都必須進入：WRITE → READBACK → COMPARE → CONFLICT_CHECK → VERIFY → REVERSE_REFERENCE → SYNC_RECEIPT

正式關係：📦｜離線正式本體｜OfflineCanonical ↔ 📚｜ChatGPT檔案庫｜ChatGPTFiles ↔ ☁️｜Google雲端硬碟｜GoogleDrive ↔ 🐙｜GitHub｜GitHub ↔ 🪨｜Obsidian｜Obsidian ↔ 🍎｜Apple檔案同步｜AppleFileSync ↔ 👀｜顯影端｜VisualProjection

所有 Projection 回指同一 🧩LKMINI，不建立第二 Identity。

## 🔬｜完成閘門｜CompletionGates

本機執行 PASS：WRITE_LOCAL → SHA256 → LOCATOR → MANIFEST → SNAPSHOT → REVERSECHAIN → SYNC_QUEUE_COMMIT → READBACK_LOCAL → COMPARE → VERIFY

遠端送達 PASS：WRITE_REMOTE → READBACK_REMOTE → COMPARE → VERIFY → SYNC_RECEIPT

顯影 PASS：CONVERSATION → CONVERSATION_LOCATOR → FILE_LOCATOR → VISUAL_PROJECTION → MOBILE_UI → READBACK → VERIFY

只完成本機閘門時：SystemExecution=VERIFIED，RemoteDelivery 可為 PENDING_REMOTE_DELIVERY，不得宣告遠端端點 PASS。

## 🌐｜全域掛載｜GlobalMount

03｜🧊系統規範｜SystemRules 為全域規範，掛載至：04｜🪞幻影世界｜PhantomWorld／00～10

## 👹｜監工必經閘門｜SupervisorMandatoryGate

所有正式施工：03｜🧊系統規範 → 👹｜地獄監工｜HellSupervisor → ☠️｜軍令引擎｜MilitaryOrderEngine → 🚫｜禁令引擎｜ConstraintEngine → 🔁｜核心同步引擎｜CoreSyncEngine → 📖｜讀回｜ReadBack → ♾️｜反向驗證｜ReverseVerify → 🧩｜LKMINI｜LKMINI

任一已知本機錯誤命中：FAIL → BLOCK_CURRENT_WRITE → PRESERVE_EVIDENCE → RESTORE_LAST_VALID_STATE → RESUME_CANONICAL_PATH

遠端不可達命中：PENDING_REMOTE_DELIVERY → PRESERVE_QUEUE_EVENT → RETRY_WHEN_REACHABLE → READBACK → COMPARE → VERIFY → SYNC_RECEIPT

## ♾️｜可逆映射｜ReversibleMappings

Canonical ⇄ Alias
OldPath ⇄ NewPath
Manual ⇄ Dashboard
Code ⇄ Visual
Write ⇄ ReadBack
Current ⇄ Projection
Snapshot ⇄ Restore
ForwardChain ⇄ ReverseChain
Conversation ⇄ ConversationLocator
File ⇄ FileLocator
VisualProjection ⇄ MobileUI
AppleFileSync ⇄ ExistingSyncChain

## 🔐｜生效原則｜ActivationRule

本規範本體可離線生效。外部端點狀態不得反向否定已完成且通過本機 ReadBack／Compare／Verify 的合法本體施工。

最終回指：🧩｜LKMINI｜LKMINI → LKMINI:// → A=A