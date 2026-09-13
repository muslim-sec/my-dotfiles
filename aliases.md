# Terminal Aliases Guide

This file contains all the active shortcuts (aliases) configured in your terminal. You can use these commands to save time and type less.

## 📁 Navigation & Directory
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `..` | `cd ..` | Move up one directory (e.g., from `folder/subfolder` to `folder`). |
| `...` | `cd ../..` | Move up two directories at once. |
| `c` | `clear` | Clears all text from the terminal screen instantly. |
| `mkcd` | `mkdir -p $1 && cd $1` | Creates a new directory and instantly jumps inside it (e.g., `mkcd my_project`). |
| `z` | `zoxide` | Smart cd command that remembers your directories. Just type `z name` to jump directly to it! |
| `zi` | `zoxide interactive` | Interactive fuzzy search through your most used directories using fzf. |
| `y` | `yazi` | Yazi file manager with smart cd capabilities. |

## 📄 File & Directory Listing
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `ls` | `eza --icons` | Lists files and folders with beautiful icons. |
| `ll` | `eza -la --icons` | Lists all files (including hidden ones) with detailed permissions, sizes, and icons. |
| `lt` | `eza --tree --icons=always --color=always -la` | Displays the folder tree in standard view (best for small folders). |
| `ltt` | `eza --tree --icons=always --color=always -la \| less -R` | Displays the folder tree with colors and icons inside an interactive pager (less) for infinite scrolling (best for huge folders). |
| `lttxt` | `eza --tree -la --color=never > tree.txt` | Automatically saves the entire tree output into a clean text file named 'tree.txt' in the current folder. |
| `lttxtf [name]` | `eza --tree -la --color=never > "$1"` | A flexible function that saves the tree output into any file name you provide (e.g., `lttxtf project.txt`). |

## 🌿 Git (Version Control)
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `g` | `git` | A shortcut to run any git command faster (e.g., `g clone` instead of `git clone`). |
| `gs` | `git status` | Check the current status of your git repository (modified files, etc). |
| `ga` | `git add .` | Stages all current changes in your project to be committed. |
| `gc` | `git commit -m` | Quickly commit your changes (e.g., `gc "Fixed a bug"`). |
| `ginit` | `git init && git add . && git commit -m "Initial commit"` | Initializes a new repository, stages all files, and creates the first commit instantly. |
| `gpush [msg]` | `git add . && git commit -m "$1" && git push` | The ultimate lazy alias: Stages changes, commits them with your message, and pushes to remote in one single hit. |
| `lg` | `lazygit` | Interactive visual UI for Git (Lazygit). |

## 🔍 Search
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `ff` | `fd -t f \| fzf` | Fast interactive search for any file in the current folder using `fd` and `fzf`. |
| `findtext [text]` | `rg "$1"` | Searches for specific text or code inside all files in the current directory using `rg` (Ripgrep). |
| `findbig` | `find . -type f -size +100M` | Finds extremely large files (over 100MB) consuming space in your current directory. |
| `recent` | `find . -mtime -1` | Lists all files modified in the last 24 hours. |

## 🌐 Network & Internet
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `myip` | `curl -s http://ipecho.net/plain` | Instantly fetches and prints your public IP address. |
| `localip` | `ipconfig getifaddr en0` | Gets your internal local network IP address (useful for local development). |
| `pingg` | `ping -c 4 8.8.8.8` | Runs a quick 4-ping test to Google's DNS to verify internet connectivity. |
| `ports` | `lsof -iTCP ...` | Lists all open network ports and the programs using them (Great for debugging "port in use" errors). |

## 🛠️ System Maintenance
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `update` | `brew update && brew upgrade` | Updates Homebrew and upgrades all your installed packages to their latest versions. |
| `b` | `btop` | Beautiful and interactive resource monitor (Btop). |

## 🧠 Advanced Developer Aliases
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `gwip` | `git commit --message "--wip--"` | Instantly saves your working directory into a temporary "--wip--" commit, bypassing checks. Useful for quick backups. |
| `gcleanbranches` | `git branch -D ...` | Automatically deletes local git branches that have been removed on the remote server. |
| `glg` | `git log --graph ...` | Transforms `git log` into a beautiful, color-coded visual tree of your commit history. |
| `extract` | `tar`, `unzip`, `gunzip` etc | A smart function that auto-detects archive types (zip, tar, gz, rar) and extracts them perfectly. (e.g., `extract file.zip`) |
| `dsh` | `docker exec -it ...` | Drops you instantly into an interactive shell inside the most recently started Docker container. |
| `fkill` | `kill -9 $(fzf)` | Opens a visual fuzzy-search menu to find and instantly kill frozen apps or processes. |
| `path` | `echo $PATH ...` | Prints your computer's `$PATH` variable in a clean, readable list instead of a messy long string. |
| `ld` | `lazydocker` | Beautiful interactive terminal UI for Docker containers and images. |
| `lnpm` | `lazynpm` | Beautiful interactive terminal UI for NPM packages and scripts. |
| `v` / `vim` | `nvim` | Opens Neovim (LazyVim), the ultimate terminal IDE. |

## 🐳 Docker
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `d` | `docker` | Shortcut for Docker command. |
| `dc` | `docker compose` | Shortcut for Docker Compose. |
| `dup` | `docker compose up -d` | Start services in background immediately. |
| `ddown` | `docker compose down` | Stop and remove running services. |
| `dps` | `docker ps` | List all currently running containers. |
| `dex` | `docker exec -it` | Execute an interactive command inside a container. |
| `dclean` | `docker system prune -a -f` | Nuke unused images, containers, and volumes to save space. |
| `lsql` | `lazysql` | Beautiful interactive terminal UI for Database management. |

## 🎨 Lifestyle & Eye-Candy
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `discord` | `~/go/bin/discordo` | CLI/TUI client for Discord. |
| `reddit` | `reddix` | TUI client for Reddit. |
| `podcast` | `linecast` | Terminal podcast player. |
| `pomodoro`| `~/.cargo/bin/zeitx` | Pomodoro timer & time tracking TUI. |
| `clock` | `tty-clock -c -C 4 -r` | Beautiful centered terminal clock. |
| `visualizer` | `cava` | Console-based audio visualizer. |

## 📜 Log Management
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `logtail [file]` | `tail -f` | Opens a log file and watches it live. Any new lines added to the log will instantly appear on your screen. Use `Ctrl+C` to stop. |
| `logview [file]` | `less +G` | Opens a massive log file safely and instantly jumps to the very bottom (the newest logs). |
| `logerr [file]` | `grep -iE ...` | Magically scans the file and extracts only the lines containing Errors, Warnings, Fails, or Exceptions. |
| `logclear [file]`| `> [file]` | Instantly empties the contents of a log file without deleting the file itself (Great for resetting logs before a test). |

## 🕒 Cron Jobs (Scheduled Tasks)
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `cronlist` | `crontab -l` | Lists all your currently active scheduled cron jobs. |
| `cronedit` | `crontab -e` | Opens your cron file safely inside Neovim so you can add or edit scheduled tasks. |
| `cronlog`  | `/usr/bin/log show ...` | Shows the system logs for cron over the last 24 hours (so you can see if your jobs actually ran). |

## 🚀 Navigation & Dot Aliases
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `.1` | `cd ..` | Go back 1 directory |
| `.2` | `cd ../..` | Go back 2 directories |
| `.3` | `cd ../../..` | Go back 3 directories |
| `.4` | `cd ../../../..` | Go back 4 directories |
| `.5` | `cd ../../../../..` | Go back 5 directories |

## 🔒 Security
| Alias | Original Command | Description |
| :--- | :--- | :--- |
| `genpass` | `/dev/urandom...` | Generates a highly secure 24-character random password instantly. |
