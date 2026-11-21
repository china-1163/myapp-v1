# UAI Interface Translator for Delta

Offline exact-match translation for visible Project UAI / Roblox UI labels.

## Delta loader

Paste this into Delta's script loader:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/china-1163/myapp-v1/main/UAI_Translator_Delta.lua"))()
```

The floating control cycles through Simplified Chinese, Japanese, and Korean.

## Scope and limitations

- Translates only exact phrases in the built-in dictionary.
- Skips TextBoxes, RichText, and UI descendants whose names indicate code, editor, source, terminal, Lua, chat, transcript, message, or conversation content.
- Does not edit Lua source or game data.
- Unknown phrases remain unchanged.
- This is a standalone Roblox/Delta script, not a Project UAI JSON UI-Mod import.
- Compatibility depends on the executor allowing the script to access the target UI hierarchy. No live Delta device test has been performed.
