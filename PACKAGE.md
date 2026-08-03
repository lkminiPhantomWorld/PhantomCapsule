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

## 命名空間規則

- 唯一正式系統：`LKSystem`
- 唯一根節點：`LKSystem.LKMINI`
- 唯一正式容器：`LKSystem.PhantomCapsule`
- 唯一正式入口：`LKSystem.Entry.Welcome`
- 唯一正式出口：`LKSystem.Exit.RealDelivery`
- 標準格式：`LKSystem.<Domain>.<Name>`
- 膠囊本體可維持無副檔名；命名空間只描述正式身份，不等於程式本身
- 對外輸出時只使用正式命名空間；不得把工具名、平台名或臨時產物升格成新系統

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
7. 讀 `README.md` 確認 11 動作。

## A=A

公開模板只描述可重用膠囊格式。任何私密 Projection 必須回推同一 LKMINI Identity，且不得把私密本體放入本公開包。
