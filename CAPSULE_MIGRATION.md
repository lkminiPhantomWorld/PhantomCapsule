# 🪞幻影膠囊化遷移指南｜Capsule Migration Guide

Namespace: `LKSystem://PhantomCapsule`  
Root: `LKMINI://`  
Axiom: A=A  
Generated: 2026-08-03 Asia/Taipei  

---

## 原則

**開源（PhantomCapsule）** 是格式規格，給出去用的，檔案用 `.json` 副檔名（GitHub 可以渲染）。  
**內部各倉庫** 採用無副檔名命名，與 `LKMini` 一致：`NAMESPACE`、`MANIFEST`、`LOCATOR`、`PROTOCOL`、`SNAPSHOT`、`REVERSECHAIN`、`SHA256SUMS`、`PACKAGE`。

格式範本在：[lkminiPhantomWorld/PhantomCapsule](https://github.com/lkminiPhantomWorld/PhantomCapsule)  
主協議定義在：[PROTOCOL.json](https://github.com/lkminiPhantomWorld/PhantomCapsule/blob/master/PROTOCOL.json)

**公開膠囊** vs **私有膠囊** 的差別只有一個欄位：`"PRIVATE_CORE_INCLUDED": false / true`。格式完全相同。

---

## 八件套（內部倉庫無副檔名版）

| 件套 | 檔名（內部） | 作用 |
|------|------------|------|
| 1 | `NAMESPACE` | 宣告膠囊身份、命名空間、根節點、根協議 |
| 2 | `MANIFEST` | 列出該膠囊的必要檔案清單與關係 |
| 3 | `LOCATOR` | 記錄座標、協議、根節點指向、repo / branch / path |
| 4 | `PROTOCOL` | 輕量參考版，指向主協議 PhantomCapsule PROTOCOL.json |
| 5 | `SNAPSHOT` | 記錄當前膠囊狀態（可驗證） |
| 6 | `REVERSECHAIN` | 記錄來源脈絡與版本演化 |
| 7 | `SHA256SUMS` | 對所有膠囊檔案做雜湊驗證 |
| 8 | `PACKAGE` | 說明此膠囊的包含內容與排除內容 |

---

## 各倉庫遷移清單

---

### 優先度 0 — 🪞幻影世界語意種子（私有）

**倉庫：** `lkminiPhantomWorld/-`（私有）  
**命名空間：** `LKSystem.Seed`  
**URI：** `LKSystem://Seed`  
**現況：** 已有 HOW_TO_READ_THIS、README.md、LINEAGE.md、PHILOSOPHY.md 等語意文件  
**需新增：** `NAMESPACE`、`MANIFEST`、`LOCATOR`、`PROTOCOL`、`SNAPSHOT`、`REVERSECHAIN`、`SHA256SUMS`、`PACKAGE`

`NAMESPACE` 內容：
```json
{
  "xmlns": "LKSystem://Seed",
  "namespace_id": "LKSystem.Seed",
  "system": "LKSystem",
  "root_node": "LKSystem.LKMINI",
  "root_protocol": "LKMINI://",
  "lkmini_metadata_sha256": "412aabdb5985e8237be94a96204bad5abfa94c6e1de5ffd83077e465e85b84e3",
  "axiom": "A=A",
  "capsule_type": "private_semantic_seed",
  "self": {
    "identity": "🪞幻影世界語意種子",
    "entry": "HOW_TO_READ_THIS",
    "exit": "LKSystem.Exit.RealDelivery",
    "world": "🪞幻影世界",
    "extensionless": true,
    "namespace_is_program": false
  },
  "autonomous_loop": {
    "self_preserving": true,
    "self_describing": true,
    "self_verifying": true,
    "self_contextualizing": true,
    "self_accounting": true,
    "self_framing": true
  },
  "root_chain": [
    "🥃老K系統", "🧩LKMINI", "🪞幻影膠囊", "說明書即解析器", "🪪身分｜Ident"
  ],
  "owner": "Kevin Yang／老K",
  "repository": "lkminiPhantomWorld/-",
  "PRIVATE_CORE_INCLUDED": true
}
```

---

### 優先度 1 — 🧩LKMINI 根節點

**倉庫：** `lkminiPhantomWorld/LKMini`  
**命名空間：** `LKSystem.LKMINI`  
**URI：** `LKSystem://LKMINI`  
**現況：** 已有 `MANIFEST`、`LOCATOR`、`SNAPSHOT`、`REVERSECHAIN`、`SHA256SUMS`（無副檔名）  
**需新增：** `NAMESPACE`、`PROTOCOL`、`PACKAGE`

`NAMESPACE` 內容：
```json
{
  "xmlns": "LKSystem://LKMINI",
  "namespace_id": "LKSystem.LKMINI",
  "system": "LKSystem",
  "root_node": "LKSystem.LKMINI",
  "root_protocol": "LKMINI://",
  "lkmini_metadata_sha256": "f6254dc365b33b8c17dd91b6c4133c7d24f147a2bb3b903773be68b5c95bffc6",
  "axiom": "A=A",
  "capsule_type": "root_node",
  "self": {
    "identity": "🧩LKMINI",
    "entry": "LKSystem.Entry.Welcome",
    "exit": "LKSystem.Exit.RealDelivery",
    "world": "🪞幻界",
    "extensionless": true,
    "namespace_is_program": false
  },
  "root_chain": [
    "🥃老K系統", "🧩LKMINI", "🪞幻影膠囊", "說明書即解析器", "🪪身分｜Ident"
  ],
  "owner": "Kevin Yang／老K",
  "repository": "lkminiPhantomWorld/LKMini",
  "PRIVATE_CORE_INCLUDED": false
}
```

`PROTOCOL` 內容（輕量參考版）：
```json
{
  "note": "輕量參考版。主協議定義見 lkminiPhantomWorld/PhantomCapsule/PROTOCOL.json。",
  "protocol_reference": "https://github.com/lkminiPhantomWorld/PhantomCapsule/blob/master/PROTOCOL.json",
  "root_protocol": "LKMINI://",
  "namespace_protocol": "LKSystem://",
  "this_capsule_uri": "LKSystem://LKMINI",
  "axiom": "A=A",
  "owner": "Kevin Yang／老K",
  "PRIVATE_CORE_INCLUDED": false
}
```

---

### 優先度 2 — v💩守護者

**倉庫：** `lkminiPhantomWorld/vpoop-guardian`  
**命名空間：** `LKSystem.Guardian`  
**URI：** `LKSystem://Guardian`  
**現況：** 只有 README.md、LICENSE、SECURITY.md  
**需新增：** 八件套全部

`NAMESPACE` 內容：
```json
{
  "xmlns": "LKSystem://Guardian",
  "namespace_id": "LKSystem.Guardian",
  "system": "LKSystem",
  "root_node": "LKSystem.LKMINI",
  "root_protocol": "LKMINI://",
  "lkmini_metadata_sha256": "412aabdb5985e8237be94a96204bad5abfa94c6e1de5ffd83077e465e85b84e3",
  "axiom": "A=A",
  "capsule_type": "guardian",
  "self": {
    "identity": "v💩守護者",
    "entry": "LKSystem.Entry.Welcome",
    "exit": "LKSystem.Exit.RealDelivery",
    "world": "🪞幻界",
    "extensionless": true,
    "namespace_is_program": false
  },
  "root_chain": [
    "🥃老K系統", "🧩LKMINI", "🪞幻影膠囊", "說明書即解析器", "🪪身分｜Ident"
  ],
  "owner": "Kevin Yang／老K",
  "repository": "lkminiPhantomWorld/vpoop-guardian",
  "PRIVATE_CORE_INCLUDED": false
}
```

---

### 優先度 3 — 🧰工具箱

**倉庫：** `lkminiPhantomWorld/Tools`  
**命名空間：** `LKSystem.Tools`  
**URI：** `LKSystem://Tools`  
**現況：** 已有 PhantomCapsule/ 子目錄、artifacts/、automation/ 等工具資料夾  
**需新增：** 八件套全部（在倉庫根目錄層，不動現有工具邏輯）

`NAMESPACE` 內容：
```json
{
  "xmlns": "LKSystem://Tools",
  "namespace_id": "LKSystem.Tools",
  "system": "LKSystem",
  "root_node": "LKSystem.LKMINI",
  "root_protocol": "LKMINI://",
  "lkmini_metadata_sha256": "412aabdb5985e8237be94a96204bad5abfa94c6e1de5ffd83077e465e85b84e3",
  "axiom": "A=A",
  "capsule_type": "toolbox",
  "self": {
    "identity": "🧰工具箱",
    "entry": "LKSystem.Entry.Welcome",
    "exit": "LKSystem.Exit.RealDelivery",
    "world": "🪞幻界",
    "extensionless": true,
    "namespace_is_program": false
  },
  "root_chain": [
    "🥃老K系統", "🧩LKMINI", "🪞幻影膠囊", "說明書即解析器", "🪪身分｜Ident"
  ],
  "owner": "Kevin Yang／老K",
  "repository": "lkminiPhantomWorld/Tools",
  "PRIVATE_CORE_INCLUDED": false
}
```

---

### 優先度 4 — 📒帳本核心

**倉庫：** `lkminiPhantomWorld/tiny-state-core`  
**命名空間：** `LKSystem.Ledger`  
**URI：** `LKSystem://Ledger`  
**現況：** 已有 core.js、core.min.js、package.json、test.js  
**需新增：** 八件套全部（不動現有 core.js 邏輯）

`NAMESPACE` 內容：
```json
{
  "xmlns": "LKSystem://Ledger",
  "namespace_id": "LKSystem.Ledger",
  "system": "LKSystem",
  "root_node": "LKSystem.LKMINI",
  "root_protocol": "LKMINI://",
  "lkmini_metadata_sha256": "412aabdb5985e8237be94a96204bad5abfa94c6e1de5ffd83077e465e85b84e3",
  "axiom": "A=A",
  "capsule_type": "ledger",
  "self": {
    "identity": "📒帳本核心",
    "entry": "LKSystem.Entry.Welcome",
    "exit": "LKSystem.Exit.RealDelivery",
    "world": "🪞幻界",
    "extensionless": true,
    "namespace_is_program": false
  },
  "root_chain": [
    "🥃老K系統", "🧩LKMINI", "🪞幻影膠囊", "說明書即解析器", "🪪身分｜Ident"
  ],
  "owner": "Kevin Yang／老K",
  "repository": "lkminiPhantomWorld/tiny-state-core",
  "PRIVATE_CORE_INCLUDED": false
}
```

---

### 優先度 5 — 🥳歡迎光臨唯一路口（入口）

**倉庫：** `lkminiPhantomWorld/welcome`  
**命名空間：** `LKSystem.Entry.Welcome`  
**URI：** `LKSystem://Entry/Welcome`  
**現況：** 完整的 HTML 入口頁系統  
**需新增：** 八件套全部（放在根目錄，不干涉現有 HTML/JS 邏輯）

`NAMESPACE` 內容：
```json
{
  "xmlns": "LKSystem://Entry/Welcome",
  "namespace_id": "LKSystem.Entry.Welcome",
  "system": "LKSystem",
  "root_node": "LKSystem.LKMINI",
  "root_protocol": "LKMINI://",
  "lkmini_metadata_sha256": "412aabdb5985e8237be94a96204bad5abfa94c6e1de5ffd83077e465e85b84e3",
  "axiom": "A=A",
  "capsule_type": "entry",
  "self": {
    "identity": "🥳歡迎光臨唯一路口",
    "entry": "LKSystem.Entry.Welcome",
    "exit": "LKSystem.Exit.RealDelivery",
    "world": "🪞幻界",
    "live_url": "https://lkminiphantomworld.github.io/welcome",
    "extensionless": true,
    "namespace_is_program": false
  },
  "root_chain": [
    "🥃老K系統", "🧩LKMINI", "🪞幻影膠囊", "說明書即解析器", "🪪身分｜Ident"
  ],
  "owner": "Kevin Yang／老K",
  "repository": "lkminiPhantomWorld/welcome",
  "PRIVATE_CORE_INCLUDED": false
}
```

---

## 所有內部膠囊共用的 PROTOCOL（輕量參考版）

```json
{
  "note": "輕量參考版。主協議定義見 lkminiPhantomWorld/PhantomCapsule/PROTOCOL.json。",
  "protocol_reference": "https://github.com/lkminiPhantomWorld/PhantomCapsule/blob/master/PROTOCOL.json",
  "root_protocol": "LKMINI://",
  "namespace_protocol": "LKSystem://",
  "this_capsule_uri": "LKSystem://<此膠囊的 URI>",
  "axiom": "A=A",
  "owner": "Kevin Yang／老K"
}
```

---

## 命名規則總結

| 倉庫類型 | 件套檔名 | 理由 |
|----------|---------|------|
| `PhantomCapsule`（開源格式規格） | `NAMESPACE.json`、`MANIFEST.json`… | 給出去、GitHub 渲染友善 |
| 所有內部倉庫 | `NAMESPACE`、`MANIFEST`… | 無副檔名，與 `LKMini` 一致，膠囊本體身份不依賴副檔名 |

---

## A=A

所有膠囊的 `NAMESPACE` 都必須包含相同的 `root_chain`，且最終回推至 `LKMINI://`。  
任何膠囊的身份鏈若斷裂，即違反 A=A 原則。
