// 🤖全部AI同任務派工捷徑｜Scriptable
// 功能：複製完整任務，選擇 AI，立即開啟
const task = "# ☠️死亡模式｜GPT檔案庫壓縮檔全量盤點凍結與工具整理\n\n任務：\n搜尋 GPT 檔案庫內全部壓縮檔、凍結包、工具包、安裝包、膠囊包、AI_CORE、三同步包與既有回執。\n\n每回合處理：\n100 個物件。\n\n每個物件執行：\n📖讀取\n🔗掛載\n📍定位\n🧬同名去重\n📂歸位\n🔬驗證\n🧾回執\n📦交付\n\n核心規則：\n1. 引用既有成果，不重做。\n2. 來源檔保持原位。\n3. 正式本名不帶重複數字尾碼。\n4. 名稱相同後再比對 SHA256。\n5. 同名異內容全部保留並建立差異映射。\n6. 已凍結物件只讀。\n7. 每回合交付盤點表、分類表、凍結表、工具表、重複映射、SHA256 對照、驗證報告、執行回執與可視畫面。\n8. 全部回指 🧩LKMINI。\n9. 任務未完成時，下一回合從接續指標繼續處理 100 個。\n\n輸出狀態固定使用：\nVERIFIED_TRUE\nUSER_CONFIRMED\nHYPOTHESIS\nVERIFIED_FALSE\n";
const items = [["ChatGPT", "https://chatgpt.com/"], ["Codex", "https://chatgpt.com/codex"], ["Perplexity", "https://www.perplexity.ai/"]];

Pasteboard.copyString(task);

let alert = new Alert();
alert.title = "🤖 全部 AI 同任務派工";
alert.message = "完整任務已複製。選擇要開啟的 AI。";
for (const [name] of items) alert.addAction(name);
alert.addCancelAction("取消");

const index = await alert.presentSheet();
if (index >= 0) {
  const [name, url] = items[index];
  Safari.open(url);
}
Script.complete();