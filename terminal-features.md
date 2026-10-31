# My Terminal Features Guide

Welcome to your personalized, high-performance terminal! This guide explains all the powerful features installed in your setup (Kitty/Ghostty). It focuses on **what** these tools do and **how** you experience them, simplified for everyday use. 

*(Note: Short commands and aliases are documented separately in the `aliases.md` file).*

---

## 🎨 1. The "Noctalia" Unified Theme
**What it is:** A custom, carefully crafted color palette.
**The User Experience:** Whether you open the **Kitty** terminal or the **Ghostty** terminal, you will see the exact same beautiful, vibrant colors. The background is a deep, immersive dark blue, and the text uses highly readable, glowing neon colors (Cyan, Magenta, Green, Yellow). It is designed to be easy on the eyes during long coding sessions.

## 🚀 2. The Smart Prompt (Starship)
**What it is:** The text that appears on the left side of your screen right before you type a command.
**The User Experience:** 
- **Cyan Folder:** You will always know exactly which folder you are in because the path is written in bold Cyan.
- **Git Awareness:** If you enter a folder that contains a programming project (a Git repository), a small `🌱` icon will appear, along with the name of the current branch in Purple.
- **The Magic Arrow (`➔`):** When you type a command and hit Enter, if the command succeeds, the arrow stays **Green**. If you make a typo or the command fails, the arrow instantly turns **Red** to warn you!

## 🔍 3. The Time-Machine Search (fzf)
**What it is:** An ultra-fast, interactive search engine for your terminal.
**The User Experience:** Instead of pressing the "Up Arrow" 50 times to find a command you typed yesterday, simply press **`Ctrl + R`** on your keyboard. A colorful menu will pop up in the middle of your screen. Type any word you remember from that command, and the menu will instantly filter down to find it. Press `Enter` to run it. It's like having Google Search for your brain!

## 📖 4. The Beautiful File Reader (bat)
**What it is:** A modern replacement for reading files in the terminal.
**The User Experience:** Normally, when you read a file in the terminal, it's just a boring wall of white text. With this tool, when you read a file, it draws a neat grid, adds line numbers on the left side, and perfectly colors the text based on the programming language (Syntax Highlighting). It makes reading code in the terminal feel like reading it inside a professional code editor (like VS Code).

## 🗂️ 5. The Visual Folder Lister (eza)
**What it is:** A modern engine for listing files and folders.
**The User Experience:** When you ask the terminal to show you what is inside a folder, instead of a messy list of names, you get a beautifully organized, colorful list. Best of all, it adds **Icons**! You will see a tiny yellow folder icon next to folders, a Python logo next to `.py` files, and a Markdown logo next to `.md` files.

## 🟢 6. Live Syntax Highlighting
**What it is:** Real-time color feedback while you type.
**The User Experience:** As you type a command in the terminal, the text color changes live. If you type a command that the computer recognizes (like `clear`), the word turns **Green**. If you make a typo (like `claer`), the word stays **Red**. This saves you from pressing Enter on broken commands!

## 🖥️ 7. The Welcome Screen (fastfetch)
**What it is:** A system information dashboard.
**The User Experience:** Every time you open a brand new terminal window, you are greeted with a beautiful Apple logo (or your OS logo) made of text, alongside a neat summary of your computer's specs: your RAM usage, CPU, graphics card, and what theme you are currently running. It gives your terminal a premium, personalized feel.

## 🧠 8. The Core Workflow Engine (Zellij, Yazi, Zoxide)
**What it is:** The tools that define how you move and work inside the terminal.
**The User Experience:**
- **Zellij**: The ultimate terminal multiplexer. It allows you to split your screen into multiple panes and tabs, and perfectly remembers your session even if you accidentally close the terminal window.
- **Yazi (`y`)**: A blazing fast file manager. Instead of listing files, it opens a visual dashboard where you can navigate with arrow keys and instantly preview images and text files directly inside the terminal.
- **Zoxide (`z`)**: A smart directory jumper. It remembers every folder you visit. Instead of typing `cd ~/projects/my-app`, you just type `z my-app` from anywhere, and it teleports you there.

## 🧰 9. The Elite Power Tools (Missing Pieces Installed)
**What it is:** A curated collection of the most advanced terminal tools that complete the ultimate 2026 riced setup.
**The User Experience:**
- **Neovim / LazyVim (`v` or `vim`)**: The final boss of text editing. Transforms Neovim into an impossibly fast, beautiful IDE directly in your terminal, fully integrated with your `rg` and `fd` tools.
- **Glow**: Beautifully renders Markdown files (like this one!) directly in the terminal, complete with styling, tables, and colors, rather than raw text.
- **Dust**: Instead of the boring, confusing output of `du`, Dust displays a stunning visual tree of what is consuming your disk space.
- **Tealdeer (`tldr`)**: A blazing-fast cheat sheet. Forget reading endless `man` pages; type `tldr nmap` to instantly get the 5 most common usages, color-coded.
- **Posting**: The terminal's version of Postman. A beautiful TUI for managing APIs, making HTTP requests, and viewing JSON responses.
- **LazyDocker (`ld`)**: The easiest, most visual way to manage your Docker containers without memorizing commands.
- **LazyNpm (`lnpm`)**: A graphical dashboard inside your terminal for running NPM scripts and managing packages.
- **LazySql (`lsql`)**: A powerful TUI for connecting to databases, running queries, and exploring schemas visually without writing complex SQL manually.
- **Direnv**: Magic environment management. As soon as you enter a project folder, it automatically loads any `.env` variables or virtual environments securely, and unloads them when you leave.

## 🎨 10. The Ricing Flex & Terminal Lifestyle
**What it is:** The tools that transform your terminal from a pure workspace into a place where you can live, relax, and flex your aesthetic setup.
**The User Experience:**
- **Discordo (`discord`)**: A completely terminal-based Discord client. Chat, read servers, and stay connected without the heavy Electron desktop app.
- **Reddix (`reddit`)**: Browse Reddit natively in your terminal with vim-like keybindings.
- **Linecast (`podcast`)**: A terminal-based podcast player to listen to your favorite shows while you code.
- **Zeitx (`pomodoro`)**: A beautiful, terminal-native Pomodoro timer and time tracker written in Rust to keep you focused.
- **Cava (`visualizer`)**: The ultimate `r/unixporn` flex. A gorgeous real-time audio visualizer that bounces to whatever music is playing on your machine.
- **Tty-clock (`clock`)**: A minimalist, large digital clock that perfectly fills an empty Zellij pane.
- **Chafa**: A masterclass in rendering high-resolution images, GIFs, and album art directly in your terminal output using Sixel or Kitty graphics protocol.

### 8. Auto-Fetching Zsh Plugins & Smart Autocomplete
Automatically clones and loads `zsh-autosuggestions` (history-based grey suggestions) and `zsh-history-substring-search`. Includes case-insensitive smart completion and interactive menus.

### 9. AUTOCD (Directory Auto-Jump)
Type the name of any folder (e.g. `Downloads`) and hit enter to automatically jump inside it, no `cd` command required!

### 10. Advanced FZF + Bat Previews
Fuzzy finding is now powered by `fd` and styled with a 60% reversed rounded border. Shows live syntax-highlighted previews of files on the right side using `bat` before you even open them.

### 11. Advanced Archive Splitting & Merging (7-Zip)
Integrated `7z` functionality to handle massive files and folders. Features custom aliases (`split-tg`, `split-1g`, `unsplit`) designed to intelligently split large backups into smaller chunks (like 1.9GB for Telegram) and automatically merge/extract `.001`, `.002` multipart files seamlessly.

### 12. Smart Penetration Testing Launcher (Exegol CLI & GUI)
A highly automated and intelligent launcher for the Exegol hacking environment:
- **CLI Mode (`exe`):** Automatically checks if Docker is running, starts Docker Desktop in the background if closed, waits for the daemon to become fully responsive, and seamlessly launches the `pentest free` workspace.
- **GUI Desktop Mode (`exe-desktop`):** Ensures Docker and the `pentest` container are running, initiates the XFCE/TigerVNC desktop services internally, bridges port 6080 to your Mac via a local socket bridge, and automatically opens the full graphical desktop in your browser at `http://localhost:6080/vnc.html`.

### 13. OpenCode CLI Integration
Integrated support for the OpenCode CLI globally. Type `code` from anywhere in the terminal to launch the `@opencode/cli` tool (without needing `npx`), and simply run `code-update` to automatically fetch and install the latest updates for it via npm.

### 14. macOS Deep Clean & System Optimizer (Mole)
A fast, privacy-focused system cleaner and optimization CLI for macOS (`mole` / `mo`). It provides native commands to deep clean system caches, thoroughly uninstall apps without leftover files, purge development project artifacts, analyze disk space consumption, and monitor system health directly from the terminal without bloated GUI utilities.

### 15. Native Arabic & Right-to-Left (RTL) Support (Dosu & FriBidi)
Integrated bidirectional text rendering and Arabic script shaping. Launching an interactive session via `arabic` (powered by Dosu) intercepts terminal output dynamically, executing the Unicode Bidirectional Algorithm (UAX #9) and OpenType character shaping so Arabic text appears cursive, properly ordered, and correctly connected. Additionally, `arcat` (powered by FriBidi) allows reading or streaming Arabic text files cleanly directly from the command line without distorting terminal grid layouts or breaking shell prompts.

### 16. Terminal Session Recorder (`record`)
A terminal session recording utility designed for penetration testing, CTF challenges, and full terminal logging on macOS:
- **Host-Level Full Capture:** Runs directly on your macOS terminal before launching Exegol. Everything displayed on screen—including Docker startup, running `exe`, tools executed inside Exegol, and returning to macOS—is captured in the log.
- **Silenced Deprecation Notice:** Automatically suppresses macOS's default bash deprecation banner so your recording session starts cleanly.
- **Shared Workspace Storage:** Automatically writes by default to `~/.exegol/workspaces/pentest/session.txt`, making the recorded log file instantly visible and accessible inside the Exegol container at `/workspace/session.txt`.
- **Flexible Options:** Supports `-a` / `--append` to append to the log instead of overwriting, custom target file paths (`record custom.txt`), and `-h` / `--help`. Type `exit` or press `Ctrl+D` to stop recording cleanly.
