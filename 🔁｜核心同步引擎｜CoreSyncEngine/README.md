# 🔁｜核心同步引擎｜CoreSyncEngine

Identity: `LKMINI://CoreSyncEngine`

這顆引擎是老K系統的唯一來源同步核心。一處變，全部變。

## 四欄位身分
- emoji：🔁
- 中文：核心同步引擎
- 英文：CoreSyncEngine
- 編號：LKSystem.Engines.CoreSyncEngine

## 核心邏輯
- 離線優先：本機執行與遠端送達分開記錄
- 雙向強連結：ForwardLink + ReverseLink，改名搬移不斷開身份
- 完成閘門：WRITE → READBACK → COMPARE → VERIFY → SYNC_RECEIPT
- 遠端不可達只標記 PENDING，不把本機已完成的判死

## ReverseChain
SyncReceipt → Verify → Compare → ReadBack → Snapshot → Manifest → Locator → CoreSyncEngine → LKMINI → A=A

## 來源
雲端：📋｜核心同步引擎完整清單｜CoreSyncEngineManifest
雲端：↩️｜核心同步引擎反向鏈｜CoreSyncEngineReverseChain
雲端：🔁｜離線優先雙向同步規範｜OfflineFirstBidirectionalSync
雲端：🧊止血同步鎖｜BleedingStopSyncLock
雲端：🧾同步清冊｜SyncManifest
雲端：🌐全平台同步看板｜FullPlatformSyncDashboard

A=A