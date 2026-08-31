# 📦 examples — 真實的胶囊範例

這裡放的是真正能用的胶囊，不是門面。

## 怎麼用

1. 打開上一層的 `🌐產品顯影.html`（或線上頁面）
2. 按「載入胶囊 JSON」，選擇 `sample-capsule.json`
3. 按「驗證目前胶囊」——它會重新算 SHA256，確認 locator 與 payload 一致
4. 按「掛載」——胶囊進入你的世界

## 格式要點

- `locator`：地址
- `sha256`：身分證（用 canonical body 重算）
- `payload`：真正的內容
- `rootProtocol`：`LKMINI://`
- `axiom`：`A=A`

制造方法、私有控制層、回應鏽——都不在這裡。這裡只有成果。
