-- Project UAI Chinese UI patch
-- Loads the official UAI client, then localizes known interface strings at the
-- shared UI primitive layer. It never rewrites source code, editor contents,
-- chat replies, user-entered text, API identifiers, or request payloads.

local UAI_URL = "https://raw.githubusercontent.com/Project-Ptolemy/ProjectUAI/main/dist/uai.lua"

local ZH = {
    ["Chat"] = "聊天",
    ["Cowork"] = "协作",
    ["Code"] = "代码",
    ["Master Vault"] = "知识库",
    ["Mod workspace"] = "模组工作区",
    ["Subagents"] = "子代理",
    ["Providers"] = "服务提供方",
    ["Tools"] = "工具",
    ["Settings"] = "设置",
    ["Logs"] = "日志",
    ["Logs & traces"] = "日志与追踪",
    ["New conversation"] = "新建对话",
    ["Browse conversations"] = "浏览对话",
    ["Open"] = "打开",
    ["Mark read"] = "标记为已读",
    ["Conversation details"] = "对话详情",
    ["Rename"] = "重命名",
    ["Move to folder"] = "移动到文件夹",
    ["Export Markdown"] = "导出 Markdown",
    ["Delete"] = "删除",
    ["Close"] = "关闭",
    ["Cancel"] = "取消",
    ["Done"] = "完成",
    ["Save"] = "保存",
    ["Save changes"] = "保存更改",
    ["Apply"] = "应用",
    ["Review"] = "检查",
    ["Copy"] = "复制",
    ["Search"] = "搜索",
    ["Refresh"] = "刷新",
    ["Previous"] = "上一页",
    ["Next"] = "下一页",
    ["Add"] = "添加",
    ["Remove"] = "移除",
    ["Edit"] = "编辑",
    ["Change"] = "更改",
    ["Selected"] = "已选择",
    ["Active"] = "已启用",
    ["Enabled"] = "已启用",
    ["Disabled"] = "已禁用",
    ["Default"] = "默认",
    ["Allow"] = "允许",
    ["Ask"] = "询问",
    ["Deny"] = "拒绝",
    ["Both"] = "两者",
    ["None"] = "无",
    ["Auto"] = "自动",
    ["Always"] = "始终",
    ["Off"] = "关闭",
    ["Standard"] = "标准",
    ["Comfortable"] = "舒适",
    ["Compact"] = "紧凑",
    ["Layout"] = "布局",
    ["Sheet"] = "底部抽屉",
    ["Panel"] = "面板",
    ["Window"] = "窗口",
    ["Theme"] = "主题",
    ["Accent"] = "强调色",
    ["Density"] = "密度",
    ["Small"] = "小",
    ["Medium"] = "中",
    ["Large"] = "大",
    ["Narrow"] = "窄",
    ["Wide"] = "宽",
    ["Level"] = "级别",
    ["Debug"] = "调试",
    ["Info"] = "信息",
    ["Warn"] = "警告",
    ["Error"] = "错误",
    ["Request history"] = "请求历史",
    ["Activity history"] = "活动历史",
    ["All conversations"] = "所有对话",
    ["Conversations"] = "对话",
    ["Find a conversation"] = "查找对话",
    ["Pinned"] = "已置顶",
    ["Unread or failed"] = "未读或失败",
    ["Running"] = "运行中",
    ["Has draft"] = "有草稿",
    ["Find a command"] = "查找命令",
    ["Search commands and settings"] = "搜索命令和设置",
    ["Search actions, settings and recent conversation titles. Up/Down selects; Enter opens."] = "搜索操作、设置和最近的对话标题。使用上下方向键选择，按回车打开。",
    ["No matches. Try a setting, panel or conversation title."] = "没有匹配项。试试设置、面板或对话标题。",
    ["Search this conversation"] = "搜索当前对话",
    ["Enter words to search the saved transcript."] = "输入关键词，搜索已保存的对话记录。",
    ["Search older"] = "搜索更早的内容",
    ["Search providers or models"] = "搜索服务提供方或模型",
    ["Custom endpoint"] = "自定义端点",
    ["Set up"] = "配置",
    ["Clear search"] = "清除搜索",
    ["Connection details"] = "连接详情",
    ["Name and endpoint. Preset defaults stay editable."] = "名称和端点。预设默认值仍可编辑。",
    ["Access"] = "访问权限",
    ["Model"] = "模型",
    ["A custom provider connection."] = "自定义服务提供方连接。",
    ["My provider"] = "我的服务提供方",
    ["Manage API keys"] = "管理 API 密钥",
    ["Use included free access"] = "使用内置免费访问",
    ["Model id"] = "模型 ID",
    ["Use it"] = "使用",
    ["Type an id"] = "输入 ID",
    ["No matching models. Refresh the catalog or type an exact ID."] = "没有匹配的模型。请刷新模型目录，或输入准确的 ID。",
    ["Choose a model"] = "选择模型",
    ["Fetch catalog"] = "获取模型目录",
    ["Enter model ID"] = "输入模型 ID",
    ["Test connection"] = "测试连接",
    ["Choose a model first: fetch the list, or type the id."] = "请先选择模型：获取模型列表，或手动输入 ID。",
    ["Start over"] = "重新开始",
    ["START HERE"] = "从这里开始",
    ["Add a provider"] = "添加服务提供方",
    ["Browse providers"] = "浏览服务提供方",
    ["Nothing configured yet."] = "尚未配置任何内容。",
    ["Add a model by id"] = "通过 ID 添加模型",
    ["Credential vault locked"] = "凭据库已锁定",
    ["Unlock saved credentials before changing providers or making requests."] = "请先解锁已保存的凭据，再修改服务提供方或发送请求。",
    ["Unlock credential vault"] = "解锁凭据库",
    ["Pick a provider from the list"] = "从列表中选择服务提供方",
    ["Connection"] = "连接",
    ["Your endpoint, authentication and recent connection health."] = "端点、身份验证方式和最近的连接状态。",
    ["Discord community"] = "Discord 社区",
    ["Use this provider"] = "使用此服务提供方",
    ["Edit connection"] = "编辑连接",
    ["Duplicate setup"] = "复制配置",
    ["Reset learned compatibility"] = "重置已学习的兼容性",
    ["Copy endpoint"] = "复制端点",
    ["Active model"] = "当前模型",
    ["Behaviour"] = "行为",
    ["Enabled"] = "已启用",
    ["Streaming responses"] = "流式响应",
    ["Transport"] = "传输方式",
    ["Fallback order"] = "备用顺序",
    ["Move up"] = "上移",
    ["Move down"] = "下移",
    ["Theme"] = "主题",
    ["New Year"] = "新年",
    ["Valentine's Day"] = "情人节",
    ["Earth Day"] = "地球日",
    ["Pride"] = "骄傲月",
    ["Peace Day"] = "和平日",
    ["Halloween"] = "万圣节",
    ["Christmas"] = "圣诞节",
    ["Automatic seasonal themes"] = "自动切换节日主题",
    ["Show reasoning"] = "显示推理过程",
    ["Show the code a tool was given"] = "显示传递给工具的代码",
    ["Expand tool detail"] = "展开工具详情",
    ["Show token counts"] = "显示令牌数量",
    ["Show the activity card"] = "显示活动卡片",
    ["Notify while minimized"] = "最小化时通知",
    ["Quick chat key"] = "快速聊天快捷键",
    ["Set master password"] = "设置主密码",
    ["Mirror the log to the console"] = "将日志同步到控制台",
    ["Delete every conversation?"] = "删除所有对话？",
    ["Reset the activity history?"] = "重置活动记录？",
    ["Reset counters"] = "重置计数器",
    ["Code font"] = "代码字体",
    ["Interface font"] = "界面字体",
    ["Transcript text size"] = "对话文本大小",
    ["Transcript width"] = "对话区域宽度",
    ["Import configuration"] = "导入配置",
    ["Paste your JSON below, then select Review."] = "在下方粘贴 JSON，然后选择“检查”。",
    ["Select Review to validate this configuration."] = "选择“检查”以验证此配置。",
    ["Copy config without credentials"] = "复制不含凭据的配置",
    ["Copy private config including credentials"] = "复制包含凭据的私有配置",
    ["Paste configuration to import"] = "粘贴要导入的配置",
    ["Export to a file"] = "导出到文件",
    ["Copy to clipboard"] = "复制到剪贴板",
    ["Import from a file"] = "从文件导入",
    ["Import settings"] = "导入设置",
    ["Open on"] = "打开时进入",
    ["Sessions"] = "会话数",
    ["Messages"] = "消息数",
    ["Total tokens"] = "总令牌数",
    ["Active days"] = "活跃天数",
    ["Current streak"] = "当前连续记录",
    ["Longest streak"] = "最长连续记录",
    ["Peak hour"] = "活跃高峰时段",
    ["Favorite model"] = "常用模型",
    ["No requests recorded in this window. A model appears here once it has answered something."] = "此时间范围内还没有请求记录。模型至少成功回复一次后才会显示在这里。",
    ["Your ideas. Your game. An agent to help make it happen."] = "你的创意，你的游戏，让智能代理帮你实现。",
    ["Project UAI Free hours"] = "Project UAI 免费服务时段",
    ["Join our Discord"] = "加入 Discord",
    ["Choose a provider to start"] = "选择服务提供方以开始",
    ["Open Providers"] = "打开服务提供方",
    ["Your activity"] = "你的活动",
    ["Overview"] = "概览",
    ["Models"] = "模型",
    ["Mobile relay (companion app)"] = "移动中继（配套应用）",
    ["Companion connected. Long replies are relayed through this phone."] = "配套应用已连接。较长的回复将通过这台手机中继。",
    ["Relay mode is off, so the script calls providers directly."] = "中继模式已关闭，脚本将直接调用服务提供方。",
    ["This host has no HTTP transport, so the companion cannot be reached."] = "当前执行环境不支持 HTTP 传输，无法连接配套应用。",
    ["Scan now"] = "立即扫描",
    ["Reset pairing"] = "重置配对",
    ["UAI Bridge desktop app"] = "UAI Bridge 桌面应用",
    ["Find desktop app automatically"] = "自动查找桌面应用",
    ["Reconnect"] = "重新连接",
    ["Disconnect"] = "断开连接",
    ["Editor"] = "编辑器",
    ["Files"] = "文件",
    ["Explorer"] = "资源管理器",
    ["Remote spy"] = "远程监视",
    ["Output"] = "输出",
    ["History"] = "历史记录",
    ["Library"] = "库",
    ["Game changes"] = "游戏变更",
    ["New script"] = "新建脚本",
    ["Version name"] = "版本名称",
    ["Exact text"] = "精确文本",
    ["Line number"] = "行号",
    ["Column (Unicode characters)"] = "列（Unicode 字符）",
    ["Script-making goal"] = "脚本制作目标",
    ["Create script project"] = "创建脚本项目",
    ["Quick open script · Ctrl+P"] = "快速打开脚本 · Ctrl+P",
    ["Search workspace source · Ctrl+Shift+F"] = "搜索工作区源码 · Ctrl+Shift+F",
    ["Reopen closed script · Ctrl+Shift+T"] = "重新打开已关闭脚本 · Ctrl+Shift+T",
    ["Switch script"] = "切换脚本",
    ["Open workspace files"] = "打开工作区文件",
    ["Save file · Ctrl+S"] = "保存文件 · Ctrl+S",
    ["Save file as…"] = "文件另存为…",
    ["Save named version"] = "保存命名版本",
    ["Rename script"] = "重命名脚本",
    ["Close script"] = "关闭脚本",
    ["Find · Ctrl+F"] = "查找 · Ctrl+F",
    ["Go to line and column · Ctrl+G"] = "跳转到行和列 · Ctrl+G",
    ["Toggle line comments"] = "切换行注释",
    ["Duplicate selected lines"] = "复制所选行",
    ["Delete selected lines"] = "删除所选行",
    ["Trim trailing spaces"] = "删除行尾空格",
    ["Indentation to four spaces"] = "缩进为四个空格",
    ["Indentation to tabs"] = "使用制表符缩进",
    ["Document details"] = "文档详情",
    ["Reload unchanged draft from disk"] = "从磁盘重新加载未修改的草稿",
    ["Indent"] = "增加缩进",
    ["Outdent"] = "减少缩进",
    ["Undo source"] = "撤销源码修改",
    ["Redo source"] = "重做源码修改",
    ["Copy source"] = "复制源码",
    ["Save as action…"] = "另存为操作…",
    ["Extract editable copy / selection"] = "提取可编辑副本 / 选区",
    ["Refresh source snapshot"] = "刷新源码快照",
    ["Workspace save details"] = "工作区保存详情",
    ["Retry workspace autosave"] = "重试工作区自动保存",
    ["Delete script…"] = "删除脚本…",
    ["Workspace storage"] = "工作区存储",
    ["Close view"] = "关闭视图",
    ["Close other views"] = "关闭其他视图",
    ["Copy script name"] = "复制脚本名称",
    ["waiting for a slot"] = "等待空位",
    ["working"] = "工作中",
    ["reported back"] = "已返回结果",
    ["stopped"] = "已停止",
    ["failed"] = "失败",
    ["Follow delegated work in one place. Open Details for live progress, messages, reports and follow-ups."] = "在一个地方跟踪委派任务。打开“详情”查看实时进度、消息、报告和后续任务。",
    ["Stop all"] = "全部停止",
    ["Follow the work, inspect its output, and continue the same context."] = "跟踪任务、检查输出，并在同一上下文中继续。",
    ["A question or next task…"] = "输入问题或下一项任务…",
    ["Stop"] = "停止",
    ["Send follow-up"] = "发送后续任务",
    ["Details"] = "详情",
    ["No subagents yet"] = "尚无子代理",
    ["Delegated tasks appear here while they run. Their reports stay available when the work is finished."] = "委派任务运行时会显示在这里。任务完成后仍可查看报告。",
    ["Limits"] = "限制",
    ["Agent settings"] = "代理设置",
    ["What a subagent is given"] = "子代理可获得的权限",
    ["No matching tools"] = "没有匹配的工具",
    ["Search by a tool name or what you want it to do."] = "按工具名称或功能搜索。",
    ["Parameters"] = "参数",
    ["Examples"] = "示例",
    ["Copy examples"] = "复制示例",
    ["Permission rule"] = "权限规则",
    ["Copy details"] = "复制详情",
    ["Select a request or log entry to inspect its details."] = "选择一个请求或日志条目以查看详情。",
    ["Requests"] = "请求",
    ["Log"] = "日志",
    ["Search host, status, tool or message"] = "搜索宿主、状态、工具或消息",
    ["Clear"] = "清空",
    ["Global and current game"] = "全局和当前游戏",
    ["All scopes"] = "所有范围",
    ["Global"] = "全局",
    ["Current game"] = "当前游戏",
    ["Project"] = "项目",
    ["All notes"] = "所有笔记",
    ["My Vault"] = "我的知识库",
    ["Starter library"] = "入门资料库",
    ["All types"] = "所有类型",
    ["Recipes"] = "方案",
    ["Bug fixes"] = "错误修复",
    ["Remote contracts"] = "远程接口约定",
    ["Instance configurations"] = "实例配置",
    ["Projects"] = "项目",
    ["References"] = "参考资料",
    ["All statuses"] = "所有状态",
    ["Draft"] = "草稿",
    ["Verified"] = "已验证",
    ["Outdated"] = "已过时",
    ["Loading notes..."] = "正在加载笔记…",
    ["Search titles, tags and note text"] = "搜索标题、标签和笔记内容",
    ["Exact project name"] = "项目准确名称",
    ["Reading note..."] = "正在读取笔记…",
    ["Enter a project name to search its notes."] = "输入项目名称以搜索相关笔记。",
    ["A current Place ID is unavailable on this host."] = "当前执行环境无法获取 Place ID。",
    ["Searching notes..."] = "正在搜索笔记…",
    ["New note"] = "新建笔记",
    ["Import Markdown"] = "导入 Markdown",
    ["Recover drafts"] = "恢复草稿",
    ["No unsaved vault drafts in this client run."] = "本次运行中没有未保存的知识库草稿。",
    ["Mod workspace"] = "模组工作区",
    ["Make Project UAI your own. Create an appearance preset, add useful panels, or write a scripted extension."] = "让 Project UAI 更符合你的使用习惯。创建外观预设、添加实用面板，或编写脚本扩展。",
    ["Manage UI mods"] = "管理界面模组",
    ["Disable mods"] = "禁用模组",
    ["Subagents"] = "子代理",
    ["Follow delegated work in one place. Open Details for live progress, messages, reports and follow-ups."] = "在一个地方跟踪委派任务。打开“详情”查看实时进度、消息、报告和后续任务。",
    ["Find in conversation"] = "在对话中查找",
    ["Up next"] = "接下来",
    ["Nothing waiting"] = "没有等待中的任务",
    ["Resume queued"] = "恢复排队任务",
    ["Clear queued"] = "清空队列",
    ["Clear queued messages?"] = "清空排队中的消息？",
    ["Edit follow-up"] = "编辑后续任务",
    ["Changes apply to this queued message. Attached images stay attached."] = "更改仅应用于这条排队消息，已附加的图片会保留。",
    ["Save changes"] = "保存更改",
    ["Show full"] = "显示完整内容",
    ["Move up"] = "上移",
    ["Move down"] = "下移",
    ["Copy text"] = "复制文本",
    ["Conversation plan"] = "对话计划",
    ["No task plan yet."] = "目前还没有任务计划。",
    ["Settings: "] = "设置：",
    ["No settings found."] = "没有找到设置。",
    ["Find a setting"] = "查找设置",
    ["A thought? A task?"] = "有想法？有任务？",
    ["Tell your agent what you have in mind…"] = "告诉你的智能代理你想做什么…",
    ["Send"] = "发送",
    ["Enter your password"] = "输入密码",
    ["Show"] = "显示",
    ["Credential vault"] = "凭据库",
    ["Exit"] = "退出",
    ["NO PASSWORD RECOVERY"] = "无法找回密码",
    ["Keep this password safe and back up your provider keys. Reset does not revoke keys at your providers or erase existing backups."] = "请妥善保管此密码并备份服务提供方密钥。重置不会撤销服务端密钥，也不会删除已有备份。",
    ["Use at least 12 characters. Several unrelated words make a strong passphrase."] = "请至少使用 12 个字符。将几个无关的词组合起来，可以构成强密码短语。",
    ["Forgot password? Remove saved credentials"] = "忘记密码？移除已保存的凭据",
    ["Remove saved credentials?"] = "移除已保存的凭据？",
    ["Remove saved credentials"] = "移除已保存的凭据",
    ["Change master password"] = "更改主密码",
    ["Lock now"] = "立即锁定",
    ["Continue without encryption"] = "不使用加密，继续",
    ["Support Project Ptolemy"] = "支持 Project Ptolemy",
    ["Optional donations help keep the project and shared free access running."] = "自愿捐赠有助于项目持续维护，并维持共享免费服务。",
    ["Choose how to support us"] = "选择支持我们的方式",
    ["Donate with Robux"] = "使用 Robux 捐赠",
    ["Open the donation place?"] = "打开捐赠体验吗？",
    ["Teleport"] = "传送",
    ["Keyboard shortcuts"] = "键盘快捷键",
    ["About this build"] = "关于此版本",
    ["Tutorial"] = "使用教程",
    ["Join Discord"] = "加入 Discord",
    ["What's new"] = "更新内容",
    ["Conversation folders"] = "对话文件夹",
    ["Folder name"] = "文件夹名称",
    ["Conversation title (optional)"] = "对话标题（可选）",
    ["Folder"] = "文件夹",
    ["New folder"] = "新建文件夹",
    ["Choose folder"] = "选择文件夹",
    ["New folder name"] = "新文件夹名称",
    ["Rename folder"] = "重命名文件夹",
    ["Remove folder"] = "删除文件夹",
    ["Remove folder?"] = "删除文件夹？",
    ["Remove"] = "删除",
    ["Conversation folders"] = "对话文件夹",
    ["Keep chats in a game, Universal, or a folder you name."] = "可将对话保存在游戏分类、通用分类或自定义文件夹中。",
    ["All conversations"] = "所有对话",
    ["Find a conversation"] = "查找对话",
    ["Choose a model below"] = "从下方选择模型",
    ["Search models..."] = "搜索模型…",
    ["Free only"] = "仅免费模型",
    ["No models yet. Use Refresh or add a model ID."] = "还没有模型。请刷新列表或添加模型 ID。",
    ["Automatic"] = "自动",
    ["Temperature"] = "温度",
    ["Save"] = "保存",
    ["Provider default"] = "服务提供方默认值",
    ["Favorite"] = "收藏",
    ["Options"] = "选项",
    ["Favorites only"] = "仅显示收藏",
    ["Known tool support only"] = "仅显示已知支持工具的模型",
    ["Clear model filters"] = "清除模型筛选",
    ["Add model ID"] = "添加模型 ID",
    ["Reasoning support"] = "推理支持",
    ["Context window"] = "上下文窗口",
    ["Manage providers"] = "管理服务提供方",
    ["Reasoning effort"] = "推理强度",
    ["Free models only"] = "仅免费模型",
    ["Exact model ID"] = "准确的模型 ID",
    ["Name"] = "名称",
    ["New"] = "新建",
    ["Clear this conversation?"] = "清空当前对话？",
    ["The transcript and the model's context are both discarded."] = "对话记录和模型上下文都会被清除。",
    ["Clear"] = "清空",
    ["Export conversation"] = "导出对话",
    ["Unload UAI"] = "卸载 UAI",
    ["Unload UAI?"] = "确定卸载 UAI？",
    ["Keyboard shortcuts"] = "键盘快捷键",
    ["ProjectUAI"] = "ProjectUAI",
    ["About this build"] = "关于此版本",
    ["Tutorial"] = "使用教程",
    ["What's new"] = "更新内容",
    ["Matches a title, a message or a reply."] = "可匹配标题、消息或回复。",
    ["Type to search."] = "输入内容以搜索。",
    ["Nothing matched "] = "没有找到匹配项：",
    ["Set up a provider to start chatting"] = "配置服务提供方后即可开始聊天",
    ["Place details"] = "地点详情",
    ["Attach a file"] = "附加文件",
    ["Queued messages"] = "排队中的消息",
    ["Draft details"] = "草稿详情",
    ["Chat loops"] = "聊天循环",
    ["Prompt library"] = "提示词库",
    ["Model and effort"] = "模型与推理强度",
    ["Permissions"] = "权限",
    ["Context breakdown"] = "上下文分析",
    ["Attachments"] = "附件",
    ["Usage and status"] = "用量与状态",
    ["Refresh conversation"] = "刷新对话",
    ["Compact now"] = "立即压缩上下文",
    ["Clear conversation"] = "清空对话",
    ["Message options"] = "消息选项",
    ["Choose provider"] = "选择服务提供方",
    ["Choose model"] = "选择模型",
    ["Export conversation"] = "导出对话",
    ["Search conversations"] = "搜索对话",
    ["Rename this conversation"] = "重命名此对话",
    ["Delete this conversation?"] = "删除此对话？",
    ["The transcript is untouched; only what the list calls it changes."] = "对话记录不会改变，只会修改列表中显示的名称。",
    ["a short title"] = "简短标题",
    ["The transcript and its file are both removed. This cannot be undone."] = "对话记录及其文件都会被删除，且无法撤销。",
    ["No subagents yet"] = "尚无子代理",
    ["Delegated tasks appear here while they run. Their reports stay available when the work is finished."] = "委派任务运行时会显示在这里。任务完成后仍可查看报告。",
    ["Search older"] = "搜索更早的内容",
    ["Nothing waiting"] = "没有等待中的任务",
    ["Send a follow-up while UAI is working and it will wait here, in order."] = "UAI 工作期间发送的后续任务会按顺序在这里等待。",
    ["Edit follow-up"] = "编辑后续任务",
    ["Copy plan"] = "复制计划",
    ["Copy text"] = "复制文本",
    ["Search this provider's models..."] = "搜索此服务提供方的模型…",
    ["No matching models. Clear the search or fetch the latest catalog."] = "没有匹配的模型。请清除搜索条件，或获取最新模型目录。",
    ["Search models..."] = "搜索模型…",
    ["No models yet. Use Refresh or add a model ID."] = "还没有模型。请刷新列表或添加模型 ID。",
    ["No matching tools"] = "没有匹配的工具",
    ["Search host, status, tool or message"] = "搜索宿主、状态、工具或消息",
    ["No unsaved vault drafts in this client run."] = "本次运行中没有未保存的知识库草稿。",
    ["Manage UI mods"] = "管理界面模组",
    ["Disable mods"] = "禁用模组",
    ["No active mod. Open Manage UI mods to create, import or review a saved mod."] = "当前没有启用的模组。打开“管理界面模组”以创建、导入或检查已保存的模组。",
    ["Find in this file"] = "在此文件中查找",
    ["Show full message"] = "展开完整消息",
    ["Show less"] = "收起",
    ["Ln "] = "第 ",
}

local function copyTable(value)
    if table.clone then
        local ok, result = pcall(table.clone, value)
        if ok and type(result) == "table" then return result end
    end
    local result = {}
    for key, item in pairs(value) do result[key] = item end
    return result
end

local function translate(value)
    if type(value) ~= "string" then return value end
    local exact = ZH[value]
    if exact then return exact end

    local count, total = value:match("^Showing (%d+) of (%d+) settings$")
    if count then return "显示 " .. count .. " 项，共 " .. total .. " 项设置" end

    local tools, groups = value:match("^(%d+) tools in (%d+) groups$")
    if tools then return tools .. " 个工具，分为 " .. groups .. " 组" end

    local line = value:match("^Ln (%d+)$")
    if line then return "第 " .. line .. " 行" end

    return value
end

local EXCLUDED_NAMES = {
    "SyntaxLine", "SyntaxPreviewLine", "SourceText", "EditorText",
    "OutputText", "LineNumber", "LineNumbers", "CodePreview",
    "MarkdownCode", "TranscriptBody", "MessageBody", "RawSource",
    "Bubble", "Assistant", "User", "Message", "StreamText",
    "RecoveredText", "RecoveredToolResult", "CodeEditor", "SourceScroll", "CodeSyntax",
}

local function hasExcludedName(instance, props)
    local name = props and props.name and tostring(props.name) or ""
    for _, fragment in ipairs(EXCLUDED_NAMES) do
        if string.find(name, fragment, 1, true) then return true end
    end

    local node = instance
    for _ = 1, 8 do
        if not node then break end
        local nodeName = ""
        pcall(function() nodeName = tostring(node.Name) end)
        for _, fragment in ipairs(EXCLUDED_NAMES) do
            if string.find(nodeName, fragment, 1, true) then return true end
        end
        node = node.Parent
    end
    return false
end

local function shouldTranslateText(parent, props)
    if type(props) ~= "table" then return false end
    if props.rich == true then return false end
    local role = tostring(props.role or "")
    if role == "mono" or role == "monoSmall" then return false end
    if hasExcludedName(parent, props) then return false end
    return type(props.text) == "string"
end

local function watchText(instance)
    if not instance then return end
    local busy = false
    pcall(function()
        instance:GetPropertyChangedSignal("Text"):Connect(function()
            if busy then return end
            local current = instance.Text
            local localised = translate(current)
            if localised ~= current then
                busy = true
                instance.Text = localised
                busy = false
            end
        end)
    end)
end

local function localiseExisting(root)
    if not root then return 0 end
    local changed = 0
    local function visit(instance)
        if instance:IsA("TextLabel") then
            local safe = not instance.RichText and not hasExcludedName(instance)
            if safe then
                local current = instance.Text
                local localised = translate(current)
                if localised ~= current then
                    instance.Text = localised
                    changed = changed + 1
                end
                watchText(instance)
            end
        elseif instance:IsA("TextBox") then
            local current = instance.PlaceholderText
            local localised = translate(current)
            if localised ~= current then instance.PlaceholderText = localised end
        end
    end
    pcall(visit, root)
    local ok, descendants = pcall(function() return root:GetDescendants() end)
    if ok then
        for _, instance in ipairs(descendants) do pcall(visit, instance) end
    end
    return changed
end

local function start()
    local response = game:HttpGet(UAI_URL)
    assert(type(response) == "string" and #response > 1000, "Could not download the official Project UAI client.")
    local chunk, compileError = loadstring(response, "@ProjectUAI")
    assert(type(chunk) == "function", tostring(compileError or "UAI compile failed"))
    local returned = chunk()

    local globalEnv = {}
    pcall(function()
        if type(getgenv) == "function" then globalEnv = getgenv() else globalEnv = _G end
    end)

    local handle = type(returned) == "table" and returned or globalEnv.UAI
    assert(type(handle) == "table", "UAI started, but its public handle was not found.")

    local env = handle.env
    assert(type(env) == "table" and type(env.loadedModules) == "table", "UAI runtime is not ready.")

    local primitives = env.loadedModules["ui/primitives"]
    for _ = 1, 50 do
        if type(primitives) == "table" then break end
        task.wait(0.1)
        primitives = env.loadedModules["ui/primitives"]
    end
    assert(type(primitives) == "table", "Could not find UAI's shared UI renderer.")

    if not primitives.__zhPatched then
        primitives.__zhPatched = true

        if type(primitives.text) == "function" then
            local originalText = primitives.text
            primitives.text = function(parent, props)
                local updated = props
                local safe = shouldTranslateText(parent, props)
                if safe then
                    updated = copyTable(props)
                    updated.text = translate(updated.text)
                end
                local label = originalText(parent, updated)
                if safe and label then watchText(label) end
                return label
            end
        end

        if type(primitives.field) == "function" then
            local originalField = primitives.field
            primitives.field = function(parent, props)
                local updated = props
                if type(props) == "table" and not hasExcludedName(parent, props) then
                    updated = copyTable(props)
                    if type(updated.placeholder) == "string" then
                        updated.placeholder = translate(updated.placeholder)
                    end
                end
                local field = originalField(parent, updated)
                local box = field and field.instance
                if box then
                    pcall(function()
                        box:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
                            local current = box.PlaceholderText
                            local localised = translate(current)
                            if localised ~= current then box.PlaceholderText = localised end
                        end)
                    end)
                end
                return field
            end
        end
    end

    local screen = handle.app and handle.app.screen
    local translated = localiseExisting(screen)

    warn("[UAI 中文补丁] 已接入 UAI 原生界面渲染；当前替换 " .. tostring(translated) .. " 处文字。代码编辑器、代码内容、聊天正文和输入内容不会被翻译。")
end

local ok, err = pcall(start)
if not ok then
    warn("[UAI 中文补丁] 启动失败：" .. tostring(err))
end
