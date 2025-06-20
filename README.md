# mise

> Thanks for the ⭐ but you [may have been sent to the wrong place](https://x.com/AkitaOnRails/status/1800910119070236999). This repo is my guide to [`mise`](https://github.com/jdx/mise) that maybe should've been a [gist](https://gist.github.com/discover) 😅

[`mise`](https://github.com/jdx/mise) (mise-en-place) is a CLI tool that can manage multiple language runtime versions on a per-project basis. It's like `asdf` but faster. It's also like `gvm`, `nvm`, `rbenv`, `tfenv` & `pyenv` (and more) all in one! (formerly called "`rtx`")

![demo](https://raw.githubusercontent.com/jdx/mise/refs/heads/main/docs/tapes/demo.gif)

## Setup

### Install `mise`

```sh
brew install mise
```

### Add `mise` to shell

```sh
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
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
mise install
```

### Install missing plugin

If `mise install` is not working and you're not getting a warning (e.g. `[WARN] Tool not installed: terraform@1.3.6`) when there is an existing idiomatic version file (e.g. `.terraform-version`) you may need to install the corresponding plugin

```sh
mise plugins install terraform
```

### Set current shell session version

Sets a tool version for the current shell session. Useful if you're doing something quick and don't want to set a global or local version.

```sh
mise shell node@lts
```

### Set global version

If you're sure you want to have a specific version always available then you can set a global version

```sh
mise use -g node@lts
mise use -g python@3.10
mise use -g rust@latest
```

### Use other backends

If you'd like to install tools using other [backends](https://mise.jdx.dev/dev-tools/backends/) like [`pipx`](https://mise.jdx.dev/dev-tools/backends/pipx.html) or [`npm`](https://mise.jdx.dev/dev-tools/backends/npm.html).

```sh
brew install pipx
mise use -g pipx:poetry
```

## Concepts

### Local version files

In order to automatically switch to the correct version of your runtime(s) when you're working on different projects it's useful to store the version number in a file in a project's directory.

#### Idiomatic version files

[`mise`](https://github.com/jdxcode/mise) supports idiomatic version files (just like `asdf`). They're language-specific files like `.node-version` and `.python-version`.
These are ideal for setting the runtime version of a project without forcing other developers to use a specific tool like `mise`/`asdf`.

They support aliases, which means you can have an `.nvmrc` file with `lts/hydrogen` and it will work in `mise` and `nvm`. Here are some of the supported legacy version files:

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

#### `.mise.toml`

[`.mise.toml`](https://mise.jdx.dev/configuration.html#mise-toml) is the native version file that is more customisable but requires that project collaborators use `mise`.

#### `.tool-versions`

[`.tool-versions`](https://mise.jdx.dev/configuration.html#tool-versions) is the `asdf` version file that supports multiple tools in one file but requires that project collaborators use `asdf` or `mise`.

## Python Usage

### Creating and Using a Virtual Environment

To have `mise` automatically create and use a Python virtual environment (such as `.venv`), configure your project as follows:

**Option 1: Add to `.mise.toml`**

```toml
[env]
_.python.venv = {path = ".venv", create = true}
```

**Option 2: Use the CLI**

```sh
mise config set env._.python.venv.path   .venv
mise config set env._.python.venv.create true
```

This will ensure that a `.venv` directory is created and used for your Python projects managed by `mise`.
