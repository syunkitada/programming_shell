# shell

## コーディング規約

- [本文](https://google.github.io/styleguide/shellguide.html)
  - [日本語訳](https://qiita.com/yabeenico/items/72b904d4bb0b6d732a86)

## Lsp

- https://github.com/bash-lsp/bash-language-server
  - ShellCheck もサポートされてます

```
$ npm install -g bash-language-server
```

## Linter(ShellCheck)

- bash-language-server でもこれのインストールを推奨しています

```
# centos
$ sudo yum install ShellCheck

# ubuntu
$ sudo apt install shellcheck
```

## Formatter(shfmt)

```
$ curl -L https://github.com/mvdan/sh/releases/download/v3.1.1/shfmt_v3.1.1_linux_amd64 -o ./shfmt
$ chmod 755 ./shfmt
$ mv ./shfmt /usr/local/bin/
```
