# coc-json

To disable linting errors for JSON files with comments, tell Vim that it's of type jsonc:

```
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
```

