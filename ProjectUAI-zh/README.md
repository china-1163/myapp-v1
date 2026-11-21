# Project UAI 简体中文版本

这是基于上游 Project UAI 公开源码构建的简体中文界面版本。

## Delta / Roblox 脚本加载器

构建成功后可使用：

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/china-1163/myapp-v1/main/UAI_ProjectUAI_Chinese.lua"))()
```

## 构建方式

- 上游项目：Project-Ptolemy/ProjectUAI
- 固定源码版本：`468c5efba422d73c1533b75dd14ca30c9413152b`
- 汉化方式：在 UI 基础控件层接入精确匹配词库，覆盖静态标签和动态状态标签；输入框占位提示单独处理。
- 代码编辑器文本、用户输入、聊天记录和模型回复不会被全局替换。
- `.github/workflows/build-uai-zh.yml` 会在源码覆盖文件变化时自动构建完整客户端并发布单文件。

本版本保留 Lua 语法、函数名、变量名、模块 ID 和执行逻辑。UI 翻译词库位于 `overrides/src/ui/localization.lua`。
