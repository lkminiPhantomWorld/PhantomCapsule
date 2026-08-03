# 📦公開封裝｜Public Package

## 封裝身份

- Name: 🪞幻影膠囊｜PhantomCapsule
- Repository: `lkminiPhantomWorld/PhantomCapsule`
- Type: public capsule template
- Root: 🧩LKMINI
- Axiom: A=A
- Private core included: false

## 視角定義

- 出口逆向：幻影膠囊的輸出/回推視角
- 動作數：11
- 新增動作：收尋 / 搜尋 Search

## 命名空間規則

- 固定根前綴：`LKMINI::PhantomCapsule`
- 標準格式：`LKMINI::PhantomCapsule::<Layer>::<Name>`
- 膠囊本體可維持無副檔名；命名空間只描述身份與層級，不等於程式本身
- 分層定義：
  - `Core`：身份、座標、規格與不可變條件
  - `Public`：公開模板與可分享內容
  - `Reverse`：ReverseChain 與來源追溯
  - `Display`：介面投影與呈現規則
- 對外輸出時只使用公開分層；私密層級不得寫入本公開包

## 本公開包包含

- `README.md`
- `MANIFEST.json`
- `LOCATOR.json`
- `SNAPSHOT.json`
- `ReverseChain.json`
- `SHA256SUMS`
- `PACKAGE.md`

## 本公開包排除

- LKMINI 私密本體
- 私密任務回執
- 私人身份鏈
- Google Drive 私密座標
- Goodnotes 私密材料
- iOS 捷徑私密材料
- 非公開使用者資料

## 還原順序

1. 讀 `README.md` 確認公開邊界。
2. 讀 `MANIFEST.json` 確認必要檔案。
3. 讀 `LOCATOR.json` 確認公開座標。
4. 用 `SHA256SUMS` 驗公開模板檔案。
5. 讀 `SNAPSHOT.json` 確認狀態。
6. 讀 `ReverseChain.json` 回推來源。
7. 讀 `README.md` 確認 11 動作與 Search。

## A=A

公開模板只描述可重用膠囊格式。任何私密 Projection 必須回推同一 LKMINI Identity，且不得把私密本體放入本公開包。
