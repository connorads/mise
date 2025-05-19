# Use `mise run demo` to record this tape

Output demo.mp4

# vhs settings: https://github.com/charmbracelet/vhs#settings
Set Shell "bash"
Set FontSize 24
Set Width 1200
Set Height 600
Set Padding 10
Set WindowBar Colorful
Set TypingSpeed 35ms

#### SETUP
Hide
Type 'apt-get update && apt-get install -y curl gpg && curl https://mise.run | MISE_INSTALL_PATH=/usr/local/bin/mise sh' Enter Wait
Type 'mkdir myproj' Enter Wait
Type 'eval "$(mise activate bash)"' Enter Wait
Type 'mise trust' Enter Wait
Type 'clear'
Enter Wait
Show

#### DEMO START

#### 1. Install global tools

Type "node -v" Sleep 500ms Enter Wait
Sleep 1s

Type "mise use --global node@lts" Sleep 500ms Enter Wait
Sleep 2s

Type "node -v" Sleep 500ms Enter Wait
Sleep 1s

Type "which node" Sleep 500ms Enter Wait
Sleep 2s

Type 'clear' Sleep 500ms Enter Wait

Type "mise use -g terraform jq go bat" Sleep 500ms Enter Wait
Sleep 2s

Type "terraform -v" Sleep 500ms Enter Wait
Type "jq --version" Sleep 500ms Enter Wait
Type "go version" Sleep 500ms Enter Wait
Sleep 3s

Type 'mise ls' Sleep 500ms Enter Wait
Sleep 3s

Type 'clear' Sleep 500ms Enter Wait
Sleep 1s

#### 2. Clone repo with virtual env

# TODO create repo with mise toml
# TODO need a fun script in there that uses some package
# TODO need this thing to create venv and activate

# TODO git Clone
# TODO cd into
# TODO bat mise.toml
# TODO trust?
# TODO mise install

Type "python script.py" Sleep 500ms Enter Wait

Type "cd .." Sleep 500ms Enter Wait
Type "python -v" Sleep 500ms Enter Wait
Sleep 2s

Type 'clear' Sleep 500ms Enter Wait

#### 3. Install project tools

Type "cd myproj" Sleep 500ms Enter Wait
Sleep 1s

Type "mise use node@23 pnpm@10" Sleep 500ms Enter Wait
Type "node -v" Enter Wait
Sleep 2s

Type "pnpm -v" Enter Wait
Sleep 2s

Type 'bat mise.toml' Sleep 500ms Enter Wait
Sleep 2s

Type 'mise ls' Sleep 500ms Enter Wait
Sleep 3s

Type "cd .." Sleep 500ms Enter Wait
Type "node -v" Sleep 500ms Enter Wait
Sleep 2s

Type 'clear' Sleep 500ms Enter Wait

#### 4. Use tools for one-off commands

Type "node -v" Sleep 500ms Enter Wait

Type "mise shell node@24"
Sleep 500ms Enter Wait Sleep 2s

Type "node -v" Sleep 500ms Enter Wait

Type "mise exec node@22 -- node -v"
Sleep 500ms Enter Wait Sleep 2s

Type 'node -v' Sleep 500ms Enter Wait

#### DEMO END

Sleep 10s

# cleanup
Hide
Type 'rm -rf myproj' Enter
Wait
