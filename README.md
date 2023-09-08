# rtx

[`rtx`](https://github.com/jdxcode/rtx) (Runtime Executor) is a CLI tool that can manage multiple language runtime versions on a per-project basis. It's like `asdf` but faster. It's also like `gvm`, `nvm`, `rbenv`, `tfenv` & `pyenv` (and more) all in one!

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

## Commands

### Set local idiomatic version file

```sh
echo 3.11 > .python-version # Python example
echo 20.5.1 > .node-version # Node example
```

### Install missing tools

Given missing tools specified in [local version files](#local-version-files) (e.g. `[WARN] Tool not installed: python@3.10`)

```sh
rtx install
```

### Install missing plugin

If `rtx install` is not working and you're not getting a warning (e.g. `[WARN] Tool not installed: terraform@1.3.6`) when there is an existing idiomatic version file (e.g. `.terraform-version`) you may need to install the corresponding plugin

```sh
rtx plugins install terraform
```

### Set global version

If you're sure you want to have a specific version always available then you can set a global version

```sh
rtx use -g node@lts
rtx use -g python@3.10
rtx use -g rust@latest
```

## Concepts

### Local version files

In order to automatically switch to the correct version of your runtime(s) when you're working on different projects it's useful to store the version number in a file in a project's directory.

#### Idiomatic version files

[`rtx`](https://github.com/jdxcode/rtx) supports idiomatic version files (just like `asdf`). They're language-specific files like `.node-version` and `.python-version`.
These are ideal for setting the runtime version of a project without forcing other developers to use a specific tool like `rtx`/`asdf`.

They support aliases, which means you can have an `.nvmrc` file with `lts/hydrogen` and it will work in `rtx` and `nvm`. Here are some of the supported legacy version files:

| Plugin     | Idiomatic Version Files                            |
|------------|----------------------------------------------------|
| crystal    | `.crystal-version`                                 |
| elixir     | `.exenv-version`                                   |
| go         | `.go-version`, `go.mod`                            |
| java       | `.java-version`, `.sdkmanrc`                       |
| node       | `.nvmrc`, `.node-version`                          |
| python     | `.python-version`                                  |
| ruby       | `.ruby-version`, `Gemfile`                         |
| terraform  | `.terraform-version`, `.packer-version`, `main.tf` |
| yarn       | `.yarnrc`                                          |

#### `rtx.toml`

[`rtx.toml`](https://github.com/jdx/rtx#rtxtoml) is the native version file that is more customisable but requires that project collaborators use `rtx`.
