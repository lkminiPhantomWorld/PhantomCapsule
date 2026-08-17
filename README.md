# 🪞幻影膠囊｜PhantomCapsule

**目前定位：免費可使用的幻影膠囊基本版。**

這裡不是只有產品介紹。公開版本先提供一顆真的可以使用的膠囊，讓使用者能把自己的內容放進去、保存狀態、重新顯影、建立快照並還原。

## ✨ 免費基本循環

`內容 → 狀態 → 顯影 → 快照 → 還原`

目前 `🌐產品顯影.html` 已可直接操作：

- 📥 放入文字／筆記內容
- 🪄 即時顯影
- 💾 使用瀏覽器 LocalStorage 保存狀態
- 📸 建立最近一次快照
- ↩️ 從快照還原
- 📱 手機窄版可使用
- 📴 基本功能不依賴後端服務

## 🧠 未來相容

基本版保留兩個空槽位：

- `AI_SLOT=READY`：未來 AI 入住後，可以更新 Content／State，再由 Renderer 重新顯影。
- `PORTAL_SLOT=READY`：未來能力或服務符合條件時，傳送門可以在膠囊裡顯影。

目前只公開槽位與使用概念，不公開內部 AI、路由、推薦、定價或控制實作。

## 🧩 既有設計吸收

本基本版沿用既有幻影膠囊設計的核心方向：

- 本體／顯影／遙控器三層
- Parser／Renderer／Manifest／Locator／Snapshot／ReverseChain 可擴充關係
- 容器先共存、理解、融合，再演化
- Projection 可回推來源

## 公共八件套

本儲存庫的公開模板層以八個可驗證檔案對應最小可逆條件：

1. `SHA256SUMS`：公開模板檔案雜湊。
2. `MANIFEST.json`：必要檔案與關係清單。
3. `LOCATOR.json`：公開程式座標與出入口座標。
4. `NAMESPACE.json`：膠囊命名空間宣告（自我解釋身份）。
5. `PROTOCOL.json`：`LKSystem://` 協議正式定義。
6. `SNAPSHOT.json`：公開模板狀態快照。
7. `ReverseChain.json`：公開模板回推鏈。
8. `PACKAGE.md`：公開封裝邊界與交付說明。

## 命名空間

本文件只整理🥃老K系統既有正式命名空間，不把工具名、平台名或臨時產物升格成新系統。

- 唯一正式系統：`LKSystem`
- 唯一根節點：`LKSystem.LKMINI`
- 唯一正式容器：`LKSystem.PhantomCapsule`
- 唯一正式入口：`LKSystem.Entry.Welcome`
- 唯一正式出口：`LKSystem.Exit.RealDelivery`
- 固定格式：`LKSystem.<Domain>.<Name>`
- 膠囊本體可無副檔名；命名空間是身份，不等於程式檔名

本公開包只暴露正式命名空間與公開投影；不建立第二套系統、不建立第二個根節點。

## 命名空間宣告（NAMESPACE.json）

如同向量圖（SVG）以 `xmlns` 宣告自身格式（`xmlns="http://www.w3.org/2000/svg"`），每顆幻影膠囊攜帶 `NAMESPACE.json` 以宣告自身命名空間身份。

```
"xmlns": "LKSystem://PhantomCapsule"
```

膠囊不需要外部解釋者就能自我說明：它是什麼系統、根節點在哪、入口與出口為何。`NAMESPACE.json` 是膠囊自我解釋存在的依據。

## 自訂協議（PROTOCOL.json）

老K系統有兩套各司其職的協議，正式定義於 `PROTOCOL.json`：

| 協議 | 角色 | 說明 |
|------|------|------|
| `LKMINI://` | 唯一正式根協議 | 宣告系統本體根身份，所有節點最終回推至此 |
| `LKSystem://` | 命名空間定址協議 | 定址系統內各正式節點（容器、入口、出口）|

**節點 URI 對照表：**

| URI | 對應節點 |
|-----|---------|
| `LKMINI://` | 唯一系統本體根 |
| `LKSystem://LKMINI` | 唯一根節點 |
| `LKSystem://PhantomCapsule` | 唯一正式容器 |
| `LKSystem://Entry/Welcome` | 唯一正式入口 |
| `LKSystem://Exit/RealDelivery` | 唯一正式出口 |

對應規則：`LKSystem.<Domain>.<Name>` ←→ `LKSystem://<Domain>/<Name>`（點換斜線）。

## 正式根鏈

```
🥃老K系統 → 🧩LKMINI → 🪞幻影膠囊 → 說明書即解析器 → 🪪身分｜Ident
```

## 固定十一動作

1. 讀取 Read
2. 啟動 Activate
3. 掛載 Mount
4. 驗證 Verify
5. 更新 Update
6. 廣播 Broadcast
7. 融合 Fusion
8. 快照 Snapshot
9. 同步 Sync
10. 可逆循環 ReversibleLoop
11. 搜尋 Search

基本版先把使用者真正碰得到的最小循環做實；多格式 Parser、完整 Runtime、同步、AI 與傳送門能力後續再接入。

## 🔐 公開邊界

公開免費使用膠囊，不代表內部製造方法、完整 Runtime／Parser、私有控制層、商業路由與內部資料全部開源。

免費開源小工具另位於 `ky46738-ops/LKMini.Public.tools`。

## ⚖️ 權利

Copyright © 2026 Kevin Yang／老K。保留所有未明確授予之權利。
