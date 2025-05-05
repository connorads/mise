---
author: Connor Adams | @connorads | https://connoradams.co.uk
---

# An introduction to

https://github.com/jdx/mise

```

 .----------------.  .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. || .--------------. |
| | ____    ____ | || |     _____    | || |    _______   | || |  _________   | |
| ||_   \  /   _|| || |    |_   _|   | || |   /  ___  |  | || | |_   ___  |  | |
| |  |   \/   |  | || |      | |     | || |  |  (__ \_|  | || |   | |_  \_|  | |
| |  | |\  /| |  | || |      | |     | || |   '.___`-.   | || |   |  _|  _   | |
| | _| |_\/_| |_ | || |     _| |_    | || |  |`\____) |  | || |  _| |___/ |  | |
| ||_____||_____|| || |    |_____|   | || |  |_______.'  | || | |_________|  | |
| |              | || |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------'  '----------------' 

```

---

# Version‑hell? 👹

- Different projects using different versions of `node` or `python`?
- `nvm use ...`
- `pyenv global ...`
- Just to run the darn tests!

---

# Meet `mise` ⚡

Use different versions of programming languages/runtimes in different projects?

- 🦀 Single binary (Rust)
- 🗄️ Easily manage different versions of runtimes/tools in projects or globally
- 📂 Installs & switches versions in milliseconds when you `cd`
- 🪄 One tool to rule them all: drop‑in replacement for `asdf`/`nvm`/`pyenv` etc.
- 🤝 Your team doesn't need to migrate but they might want to

## But there's moar

- [CI](https://mise.jdx.dev/continuous-integration.html)
- [backends](https://mise.jdx.dev/dev-tools/backends/)
- [direnv](https://mise.jdx.dev/environments/)
- [secrets](https://mise.jdx.dev/environments/secrets.html)
- [python venv](https://mise.jdx.dev/lang/python.html#automatic-virtualenv-activation)


---

# Declare your versions in your project files

## Reads *existing* idiomatic version files

| Tool      | Version Files |
|-----------|---------------|
| Go        | `.go-version`, `go.mod` |
| Java      | `.java-version`, `.sdkmanrc` |
| Node      | `.nvmrc`, `.node-version` |
| Python    | `.python-version` |
| Ruby      | `.ruby-version`, `Gemfile` |
| Terraform | `.terraform-version`, `main.tf` |
| Crystal   | `.crystal-version` |
| Elixir    | `.exenv-version` |

## Or use centralised files
- **mise**: `mise.toml`
- **asdf**: `.tool-versions`

---

# Demo 1 — Node

```bash
mkdir node-demo && cd node-demo
echo "lts" > .nvmrc
node -v          # ➜ v20.x (auto‑installed)
mise list node
cd ..
```

???
Point out: you never ran nvm or brew; mise did it for you.

---

# Demo 2 — Python + Terraform

```bash
mkdir infra && cd infra
echo "3.12"  > .python-version
echo "1.8.4" > .terraform-version
python -V
terraform version | head -1
```

???
Show two runtimes resolved instantly.

---

# 45‑second Power‑Ups 🚀

* Task runner — `mise test`
* Dir‑scoped env vars — `mise env`
* Even CLI tools — `mise use jq@1.7`

---

# Supported tools 🌍

Node • Python • Ruby • Go • Java • .NET • Bun • Deno • Terraform • JQ • AWS CLI • Rust • ...

---

# Try it now

```bash
curl https://mise.run | bash
```

Docs → mise.jdx.dev

---

# `mise` FAQ

## How is this different from `asdf`?

It's quicker and has fulls support for `asdf` but with more (optional) features.

## But what about `homebrew` or `apt` etc.?

You can carry on using `brew` to install things, expecially GUI apps with `casks`. But you might want to consider using `mise` for _"developer tools"_, especially when using specific versions is required.

## Why not use `nix` or something else that's _"better"_?

Yeah go for it. But `nix` is a bit more involved and is probably a harder sell for your teamates.
