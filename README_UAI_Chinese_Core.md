# Project UAI 简体中文界面补丁

本脚本会先加载 Project UAI 官方客户端，再接入 UAI 自己的共享 UI 文字渲染层，对已收录的固定界面文案进行简体中文替换。

## Delta 加载

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/china-1163/myapp-v1/main/UAI_Chinese_Core.lua"))()
```

## 保护范围

- 不翻译 Lua / Luau 代码、代码编辑器内容、语法高亮内容或源码预览。
- 不翻译聊天正文、模型回复、用户输入、密码、API Key、模型 ID、HTTP Header 等动态或协议内容。
- 只翻译脚本内置词库匹配到的界面文字；未收录的新文案会保留原文。
- 它不是 OCR，也不会额外创建悬浮翻译窗口；它在 UAI 自己的 UI 原语层进行运行时补丁。

## 注意

脚本从 Project UAI 官方仓库的 `main/dist/uai.lua` 加载客户端。官方更新可能调整内部模块结构，因此未来版本可能需要同步适配。已完成 GitHub 文件写入和内容读取检查，但尚未在 Delta 手机上完成实机运行验证。
