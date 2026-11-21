-- UAI Interface Translator for Delta
-- Offline exact-match UI translation. No HTTP requests, no code editing.
local Players=game:GetService("Players")
local CoreGui=game:GetService("CoreGui")
local UIS=game:GetService("UserInputService")
local player=Players.LocalPlayer
local lang="zh-CN"
local langs={"zh-CN","ja","ko"}
local langName={["zh-CN"]="简体中文",ja="日本語",ko="한국어"}
local idx={["zh-CN"]=1,ja=2,ko=3}
local dict={
["Sessions"]={"会话","セッション","세션"},["Messages"]={"消息","メッセージ","메시지"},
["Total tokens"]={"Token 总数","合計トークン","총 토큰"},["Active days"]={"活跃天数","アクティブ日数","활동 일수"},
["Current streak"]={"当前连续天数","現在の連続日数","현재 연속 기록"},["Longest streak"]={"最长连续天数","最長連続日数","최장 연속 기록"},
["Peak hour"]={"活跃高峰时段","最も利用した時間帯","가장 활발한 시간"},["Favorite model"]={"常用模型","お気に入りモデル","즐겨찾는 모델"},
["Overview"]={"概览","概要","개요"},["Models"]={"模型","モデル","모델"},["Your activity"]={"你的活动","アクティビティ","활동"},
["Join our Discord"]={"加入 Discord 社区","Discord に参加","Discord 참여하기"},["Open Providers"]={"打开服务提供商","プロバイダーを開く","제공업체 열기"},
["Choose a provider to start"]={"选择服务提供商以开始","開始するにはプロバイダーを選択","시작하려면 제공업체 선택"},
["Custom endpoint"]={"自定义 API 地址","カスタムエンドポイント","사용자 지정 엔드포인트"},["Set up"]={"设置","セットアップ","설정"},
["Clear search"]={"清除搜索","検索をクリア","검색 지우기"},["Connection details"]={"连接详情","接続の詳細","연결 세부정보"},
["Access"]={"访问凭据","アクセス","액세스"},["Model"]={"模型","モデル","모델"},["My provider"]={"我的服务提供商","マイプロバイダー","내 제공업체"},
["Manage API keys"]={"管理 API 密钥","API キーを管理","API 키 관리"},["Model id"]={"模型 ID","モデル ID","모델 ID"},
["Type an id"]={"输入 ID","ID を入力","ID 입력"},["Choose a model"]={"选择模型","モデルを選択","모델 선택"},
["Fetch catalog"]={"获取模型列表","モデル一覧を取得","모델 목록 가져오기"},["Enter model ID"]={"输入模型 ID","モデル ID を入力","모델 ID 입력"},
["Test connection"]={"测试连接","接続をテスト","연결 테스트"},["Start over"]={"重新开始","最初からやり直す","처음부터 다시"},
["START HERE"]={"从这里开始","ここから開始","여기서 시작"},["Add a provider"]={"添加服务提供商","プロバイダーを追加","제공업체 추가"},
["Browse providers"]={"浏览服务提供商","プロバイダーを閲覧","제공업체 둘러보기"},["Active"]={"已启用","有効","활성"},
["Add"]={"添加","追加","추가"},["Credential vault locked"]={"凭据保险库已锁定","認証情報保管庫はロック中","자격 증명 보관함 잠김"},
["Unlock credential vault"]={"解锁凭据保险库","認証情報保管庫のロックを解除","자격 증명 보관함 잠금 해제"},
["Connection"]={"连接","接続","연결"},["Use this provider"]={"使用此服务提供商","このプロバイダーを使用","이 제공업체 사용"},
["Edit connection"]={"编辑连接","接続を編集","연결 편집"},["Duplicate setup"]={"复制配置","設定を複製","설정 복제"},
["Copy endpoint"]={"复制 API 地址","エンドポイントをコピー","엔드포인트 복사"},["Active model"]={"当前模型","アクティブモデル","활성 모델"},
["No matching models."]={"没有匹配的模型。","一致するモデルはありません。","일치하는 모델이 없습니다."},
["Behaviour"]={"行为","動作","동작"},["Enabled"]={"启用","有効","사용"},
["Streaming responses"]={"流式响应","ストリーミング応答","스트리밍 응답"},["Transport"]={"传输方式","通信方式","전송 방식"},
["Fallback order"]={"备用顺序","フォールバック順序","대체 순서"},["Move up"]={"上移","上へ","위로 이동"},
["Move down"]={"下移","下へ","아래로 이동"},["Remove"]={"移除","削除","제거"},
["Switch provider"]={"切换服务提供商","プロバイダーを切り替え","제공업체 전환"},["Your saved connections"]={"已保存的连接","保存済みの接続","저장된 연결"},
["Manage providers"]={"管理服务提供商","プロバイダーを管理","제공업체 관리"},["Choose a model below"]={"从下方选择模型","下からモデルを選択","아래에서 모델 선택"},
["Search models..."]={"搜索模型...","モデルを検索...","모델 검색..."},["Free only"]={"仅免费模型","無料のみ","무료만"},
["Automatic"]={"自动","自動","자동"},["Temperature"]={"温度","温度","온도"},["Refresh"]={"刷新","更新","새로고침"},
["Options"]={"选项","オプション","옵션"},["Done"]={"完成","完了","완료"},["Favorite"]={"收藏","お気に入り","즐겨찾기"},
["Default"]={"默认","デフォルト","기본값"},["Allow"]={"允许","許可","허용"},["Ask"]={"询问","確認","묻기"},["Deny"]={"拒绝","拒否","거부"},
["Parameters"]={"参数","パラメーター","매개변수"},["Examples"]={"示例","例","예시"},["Copy examples"]={"复制示例","例をコピー","예시 복사"},
["Subagents"]={"子代理","サブエージェント","하위 에이전트"},["Stop all"]={"全部停止","すべて停止","모두 중지"},
["Stop"]={"停止","停止","중지"},["Send follow-up"]={"发送后续消息","追加メッセージを送信","후속 메시지 보내기"},
["Close"]={"关闭","閉じる","닫기"},["Details"]={"详情","詳細","세부정보"},
["Master Vault"]={"主知识库","マスターボルト","마스터 보관함"},["Search titles, tags and note text"]={"搜索标题、标签和笔记内容","タイトル、タグ、ノート本文を検索","제목, 태그, 노트 내용 검색"},
["New note"]={"新建笔记","新しいノート","새 노트"},["Import Markdown"]={"导入 Markdown","Markdown をインポート","Markdown 가져오기"},
["Logs & traces"]={"日志与追踪","ログとトレース","로그 및 추적"},["Requests"]={"请求","リクエスト","요청"},
["Log"]={"日志","ログ","로그"},["Search host, status, tool or message"]={"搜索主机、状态、工具或消息","ホスト、状態、ツール、メッセージを検索","호스트, 상태, 도구 또는 메시지 검색"},
["Copy"]={"复制","コピー","복사"},["Clear"]={"清空","クリア","지우기"},
["Welcome to Project UAI"]={"欢迎使用 Project UAI","Project UAI へようこそ","Project UAI에 오신 것을 환영합니다"},
["Start chatting"]={"开始聊天","チャットを始める","채팅 시작"},["Connect a model"]={"连接模型","モデルを接続","모델 연결"},
["Getting started"]={"快速入门","はじめに","시작하기"},["Back"]={"返回","戻る","뒤로"},
["Next"]={"下一步","次へ","다음"},["Keyboard shortcuts"]={"键盘快捷键","キーボードショートカット","키보드 단축키"},
["Find a command"]={"查找命令","コマンドを検索","명령 찾기"},["Search commands and settings"]={"搜索命令和设置","コマンドと設定を検索","명령 및 설정 검색"},
}
local prefixes={
{"Requests: ",{"请求数：","リクエスト数：","요청 수: "}},
{"Tokens: ",{"Token 数：","トークン数：","토큰 수: "}},
{"Now: ",{"现在：","現在：","현재: "}},
{"Add a model to ",{"将模型添加到 ","モデルを追加：","모델 추가: "}},
}
local function translate(s)
 local row=dict[s]; if row then return row[idx[lang]] end
 for _,p in ipairs(prefixes) do if s:sub(1,#p[1])==p[1] then return p[2][idx[lang]]..s:sub(#p[1]+1) end end
end
local blockedNames={"code","editor","syntax","source","terminal","luau","lua","transcript","message","conversation","markdown","response","chat"}
local original=setmetatable({}, {__mode="k"}); local applied=setmetatable({}, {__mode="k"})
local writing=setmetatable({}, {__mode="k"}); local watched=setmetatable({}, {__mode="k"})
local roots={}
local function safe(fn) pcall(fn) end
local function isBlocked(obj,root)
 local n=obj
 while n and n~=root do
  local name=string.lower(tostring(n.Name or ""))
  for _,w in ipairs(blockedNames) do if name:find(w,1,true) then return true end end
  n=n.Parent
 end
 return false
end
local function eligible(obj,root)
 local ok,v=pcall(function()
  return not obj:IsA("TextBox") and (obj:IsA("TextLabel") or obj:IsA("TextButton")) and not obj.RichText and not isBlocked(obj,root)
 end)
 return ok and v
end
local function setText(obj,value)
 writing[obj]=true; safe(function() obj.Text=value end); writing[obj]=nil; applied[obj]=value
end
local function apply(obj,root)
 if not eligible(obj,root) then return end
 local ok,now=pcall(function() return obj.Text end); if not ok or type(now)~="string" then return end
 local src=(applied[obj] and now==applied[obj]) and original[obj] or now
 if not src then return end
 if not (applied[obj] and now==applied[obj]) then original[obj]=now end
 local result=translate(src)
 if result then setText(obj,result)
 elseif applied[obj] and now==applied[obj] then setText(obj,src); applied[obj]=nil end
end
local function watch(obj,root)
 if watched[obj] or not eligible(obj,root) then return end
 watched[obj]=true
 local ok,sig=pcall(function() return obj:GetPropertyChangedSignal("Text") end)
 if ok then sig:Connect(function()
  if writing[obj] then return end
  local value=""; pcall(function() value=obj.Text end)
  if applied[obj] and value==applied[obj] then return end
  original[obj]=value; applied[obj]=nil; apply(obj,root)
 end) end
 apply(obj,root)
end
local function scan()
 for root in pairs(roots) do
  safe(function() for _,obj in ipairs(root:GetDescendants()) do watch(obj,root) end end)
 end
end
local function restore()
 for obj,src in pairs(original) do
  if obj and obj.Parent and applied[obj] then
   local now=""; pcall(function() now=obj.Text end)
   if now==applied[obj] then pcall(function() obj.Text=src end) end
  end
 end
 original=setmetatable({}, {__mode="k"}); applied=setmetatable({}, {__mode="k"})
end
local function refresh()
 restore(); scan()
end
local function addRoot(root)
 if root and not roots[root] then
  roots[root]=true
  root.DescendantAdded:Connect(function(obj) watch(obj,root) end)
 end
end
addRoot(CoreGui)
local function hookPlayerGui()
 if player then
  local pg=player:FindFirstChildOfClass("PlayerGui") or player:WaitForChild("PlayerGui",10)
  addRoot(pg)
 end
end
hookPlayerGui()
if player then player.CharacterAdded:Connect(function() task.wait(1); hookPlayerGui(); scan() end) end
local gui=Instance.new("ScreenGui"); gui.Name="UAITranslatorControl"; gui.ResetOnSpawn=false; gui.DisplayOrder=999999
local ok=pcall(function() gui.Parent=CoreGui end)
if not ok or not gui.Parent then
 local pg=player and player:FindFirstChildOfClass("PlayerGui"); if pg then gui.Parent=pg end
end
local frame=Instance.new("Frame"); frame.Size=UDim2.fromOffset(190,42); frame.Position=UDim2.new(0,18,0.35,0)
frame.BackgroundColor3=Color3.fromRGB(28,31,40); frame.BorderSizePixel=0; frame.Active=true; frame.Parent=gui
Instance.new("UICorner",frame).CornerRadius=UDim.new(0,8)
local btn=Instance.new("TextButton"); btn.Size=UDim2.new(1,-8,1,-8); btn.Position=UDim2.fromOffset(4,4)
btn.BackgroundColor3=Color3.fromRGB(55,65,85); btn.TextColor3=Color3.new(1,1,1); btn.TextSize=14
btn.Font=Enum.Font.GothamMedium; btn.Text="UAI 翻译："+langName[lang]; btn.Parent=frame
Instance.new("UICorner",btn).CornerRadius=UDim.new(0,6)
btn.MouseButton1Click:Connect(function()
 local i=table.find(langs,lang) or 1; lang=langs[i%#langs+1]
 btn.Text="UAI 翻译："+langName[lang]; refresh()
end)
local dragging=false; local dragInput,startPos,startPointer
btn.InputBegan:Connect(function(input)
 if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
  dragging=true; startPos=frame.Position; startPointer=input.Position
  input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then dragging=false end end)
 end
end)
UIS.InputChanged:Connect(function(input)
 if dragging and (input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch) then
  local d=input.Position-startPointer
  frame.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
 end
end)
scan()
print("[UAI Translator] Loaded. Tap floating control to switch Simplified Chinese / Japanese / Korean.")
