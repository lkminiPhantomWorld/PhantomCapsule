# 🪞幻影膠囊｜PhantomCapsule

狀態：公開開源包  
主權：🥃老K  
範圍：只公開幻影膠囊通用規格與範本，不公開私密本體。

## 這是什麼

出口逆向在這裡視為幻影膠囊的輸出/回推視角。

幻影膠囊是一種可視化容器。

它不是單純圖片、普通 ZIP 或只有圖示的捷徑。

一顆幻影膠囊至少承載：Identity、Locator、Manifest、SHA256、Snapshot、ReverseChain、顯示面、回推鏈，以及啟動或導向入口。

## 解析器

- 解析器負責依副檔名與檔案型別決定顯示方式。
- 可互動的容器會隨支援的副檔功能增加而呈現得更完整。
- 本公開包只描述通用解析邏輯，不包含私密或專屬格式能力。

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

`LKSystem://` 是本系統的自訂協議，正式定義於 `PROTOCOL.json`。

如同 `http://` 宣告超文本存取方式，`LKSystem://` 宣告本系統節點的定址方式：

| URI | 對應節點 |
|-----|---------|
| `LKSystem://` | 唯一系統根 |
| `LKSystem://LKMINI` | 唯一根節點 |
| `LKSystem://PhantomCapsule` | 唯一正式容器 |
| `LKSystem://Entry/Welcome` | 唯一正式入口 |
| `LKSystem://Exit/RealDelivery` | 唯一正式出口 |

對應規則：`LKSystem.<Domain>.<Name>` ←→ `LKSystem://<Domain>/<Name>`（點換斜線）。

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

## 公開範圍

本開源包只公開通用規格與可重用範本。

🥃LKMINI 私密本體、私密任務回執、私人身份鏈、Drive／Goodnotes／iOS 捷徑材料及非公開使用者資料，不屬於本公開儲存庫內容。

## A＝A 原則

顯示面可以變，投影平台可以變；身份鏈必須回推同一來源。

## 授權

- 公開儲存庫內容：MIT License
- 私密本體內容：未包含
- PRIVATE_CORE_INCLUDED=false
