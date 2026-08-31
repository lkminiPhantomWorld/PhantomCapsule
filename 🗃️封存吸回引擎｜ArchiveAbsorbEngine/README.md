# 🗃️封存吸回引擎｜ArchiveAbsorbEngine

> Identity: `LKMINI://engine/ArchiveAbsorbEngine`
> Type: Engine
> Status: READY
> Root: 🧩LKMINI
> Axiom: A=A

## 使命

把「封存替換」改成「解壓→吸回」。

與「🧊封存吸回規則」一致：對的留下、舊的封存、錯的保留但降權。

## 流程

1. **解壓**：把待處理的 zip 解出來，不改資訊。
2. **識別**：讀出每個檔案的 Identity / Locator / Manifest / ReverseChain / SHA256。
3. **分類**：
   - `CanonicalCandidate` → 優先驗證
   - `AbsorbableLegacy` → 抽取可用事實，保留原件
   - `EvidenceOnly` / `NegativeSample` / `ContaminationCandidate` → 隔離，不進本體
4. **吸回**：把對的事實融合進「⭐️唯一真相」，更新 Manifest / Locator / ReverseChain。
5. **證據封存**：舊檔、錯誤、污染全部留下，不刪除。
6. **驗證**：READBACK → VERIFY → SNAPSHOT → REVERSE TRACE → PASS

## 不做的事

- 不覆蓋舊檔
- 不刪除錯誤記錄
- 不把 Projection 冒充成 Identity

## ReverseChain

`ArchiveAbsorbEngine → ArchiveThenAbsorbPolicy → BleedingStopSyncLock → ⭐️唯一真相 → 🧩LKMINI → A=A`
