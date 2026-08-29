# README

## Global markdownlint.json

### VS Code

In settings, this needs to be set to the full path like `$(user_name)/.config/markdown/markdownlint.json`.  `~/.config/...` won't work.

## Global markdown.css

VS Code will not allow you to point to a `markdown.css` file that is outside of the directory.  Apparently, this is for security reasons.

Possible solutions:

1. Have a global markdown.css file in the `./config/markdown` folder, and make a symlink from the working directory to it.
1. Have VS Code point to a URL.  This seems to work for `https://cdn.jsdelivr.net/npm/@sukka/markdown.css`, but doesn't seem to work for `https://raw.githubusercontent.com/davehoch/markdown.css/refs/heads/master/dist/markdown.min.css`

### Typora

Maybe I can symlink the global `markdown.css` to `~/Library/Application Support/abnerworks.Typora/themes`
