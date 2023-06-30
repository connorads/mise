# rtx

[`rtx`](https://github.com/jdxcode/rtx) (Runtime Executor) is a CLI tool that can manage multiple language runtime versions on a per-project basis. It's like `asdf` but faster. It's also like `gvm`, `nvm`, `rbenv` & `pyenv` (and more) all in one!

![image](https://github.com/jdxcode/rtx/raw/main/docs/demo.gif)

## Setup

### Install `rtx`

```sh
brew install rtx
```

### Add `rtx` to shell

```sh
echo 'eval "$(rtx activate zsh)"' >> ~/.zshrc
```

### Add `rtx` completions to shell

```sh
sudo mkdir -p /usr/local/share/zsh/site-functions
sudo sh -c 'rtx completion zsh  > /usr/local/share/zsh/site-functions/_rtx'
```

## Commands

### Set global version

```sh
rtx use -g node@lts
rtx use -g python@3.10
rtx use -g rust@latest
```

### Set local version

```sh
rtx use node@latest
```
