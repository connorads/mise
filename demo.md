# Demo

Here are some commands for a live demo.

## Hide shell history

```sh
fc -p
```

## Install `mise`

```sh
brew install mise
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
```

## Check if `node` is available

```sh
which node
# node not found

node --version
# zsh: command not found: node
```

## Set version locally (i.e. `node` and `python`)

### Idiomatically

```sh
echo 22 > .node-version
node --version
# v22.14.0
```

```sh
rm .node-version
node --version         
# zsh: command not found: node
```

### Using `mise.toml`

```sh
mise use node@20
node --version
# v20.19.0
```

```sh
mise use python@3.13.2
cat mise.toml 
# [tools]
# node = "20"
# python = "3.13.2"
```

```sh
rm .mise.toml
python --version         
# zsh: command not found: python
```

### Temporary shell

```sh
mise shell go@1.20.8
go version
# go version go1.20.8 darwin/arm64
```

## Moar

Here are some other cool things

- [backends](https://mise.jdx.dev/dev-tools/backends/)
- [direnv](https://mise.jdx.dev/environments/)
- [secrets](https://mise.jdx.dev/environments/secrets.html)
- [python venv](https://mise.jdx.dev/lang/python.html#automatic-virtualenv-activation)
