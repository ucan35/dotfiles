# coc

- Uses `ccls` package. Depends on `clang`, `llvm-libs` and `rapidjson`.
- Uses configuration file located in `~/.config/nvim/coc-settings.json`.
```json
{
    "languageserver": {
        "ccls": {
            "command": "ccls",
                "filetypes": ["c", "cpp", "cuda", "objc", "objcpp"],
                "rootPatterns": [".ccls-root", "compile_commands.json"],
                "initializationOptions": {
                    "cache": {
                        "directory": "/home/can/.cache/ccls"
                    }
                }
        }
    }
}
```
