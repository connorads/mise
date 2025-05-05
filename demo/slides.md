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

Single binary (Rust) – drop‑in replacement for `asdf`/`nvm`/`pyenv` etc.

Installs & switches versions in milliseconds when you `cd`

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
