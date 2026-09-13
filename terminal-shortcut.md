# Global Terminal Shortcuts Guide

This file contains the shortcuts for your **Global Terminal Multiplexer (Zellij)**. Because Zellij runs *inside* the terminal, **these exact shortcuts will work identically whether you use Kitty, Ghostty, or the default Mac Terminal**.

To start your persistent workspace, simply open your terminal and type:
`zellij`

---

## 🪟 Window Management (Splitting & Panes)
These shortcuts allow you to split your screen seamlessly like a Tiling Window Manager.
*To perform these actions, you first press `Ctrl + P` to enter "Pane Mode", then release it and press the second key.*

| Shortcut | Action | Description |
| :--- | :--- | :--- |
| `Ctrl + P` then `D` | **Split Down** | Splits the current window horizontally (Top/Bottom). |
| `Ctrl + P` then `R` | **Split Right** | Splits the current window vertically (Left/Right). |
| `Ctrl + P` then `X` | **Close Pane** | Closes the window you are currently inside. |
| `Ctrl + P` then `F` | **Fullscreen** | Zooms the current window to take up the whole terminal. Press again to unzoom. |
| `Ctrl + P` then `W` | **Floating Pane** | Detaches the current window so it floats above the others (perfect for quick edits). |

## 🧭 Navigation (Moving Between Splits)
| Shortcut | Action | Description |
| :--- | :--- | :--- |
| `Ctrl + P` then `Arrows` | **Move Focus** | Use your Arrow Keys (Up/Down/Left/Right) to jump between your split windows. |
| `Alt + [Arrows]` | **Fast Move** | (If enabled in your terminal) Instantly jump between splits without pressing Ctrl+P. |

## 📑 Tab Management
Instead of using your terminal's tabs, use Zellij's tabs so they persist in the background!
*Press `Ctrl + T` to enter "Tab Mode", then release.*

| Shortcut | Action | Description |
| :--- | :--- | :--- |
| `Ctrl + T` then `N` | **New Tab** | Opens a completely new, clean workspace tab. |
| `Ctrl + T` then `X` | **Close Tab** | Closes the entire current tab and all its splits. |
| `Ctrl + T` then `Arrows`| **Switch Tabs**| Use Left/Right arrows to switch between your active tabs. |

## 🔒 The Magic of Persistence (Sessions)
This is why we use Zellij. If you accidentally quit your terminal, your work is NOT lost.

| Command / Shortcut | Action | Description |
| :--- | :--- | :--- |
| `Ctrl + O` then `D` | **Detach** | Safely disconnects from your workspace, leaving everything running in the background. |
| `zellij attach` | **Resume** | Type this in a new terminal window to instantly bring back all your splits, tabs, and running programs exactly as you left them! |

---

## 🍎 Ghostty Native Shortcuts (Optional)
If you are using Ghostty but haven't launched `zellij`, you can use Ghostty's built-in shortcuts. *(Note: These will not persist in the background if you close the app).*

| Shortcut | Action |
| :--- | :--- |
| `Cmd + D` | Split window Vertically (Right) |
| `Cmd + Shift + D` | Split window Horizontally (Down) |
| `Cmd + T` | Open a new Ghostty Tab |
| `Cmd + W` | Close the current split or tab |
| `Cmd + [ / Cmd + ]` | Switch between tabs |
| `Cmd + Option + Arrows`| Move focus between splits |

## 📝 LazyVim IDE Shortcuts
LazyVim transforms Neovim into an IDE. The leader key is the `Spacebar`.

| Shortcut | Action |
| :--- | :--- |
| `Space` then `e` | Toggle the File Explorer (NeoTree) on the left. |
| `Space` then `f` then `f` | Find File (Fuzzy search across the project). |
| `Space` then `s` then `g` | Search text globally using Ripgrep. |
| `Shift + K` | Show documentation for the code under your cursor (Hover). |
| `Space` then `c` then `a` | Show Code Actions (auto-fix errors). |

## 📁 Yazi File Manager Shortcuts
When you type `y` to open Yazi:

| Shortcut | Action |
| :--- | :--- |
| `Arrows` or `h/j/k/l` | Navigate folders (Right/l to enter, Left/h to go back). |
| `Space` | Select a file (for copying/moving). |
| `d` then `d` | Delete a file (moves to trash). |
| `q` | Quit Yazi and teleport your terminal to the current folder. |

## 🛠️ Lazy TUI Tools (Lazygit, Lazydocker, Lazysql)
These unified tools share the same mental model:

| Shortcut | Action |
| :--- | :--- |
| `Arrows` or `h/j/k/l` | Move between panels. |
| `Space` | Select, stage, or toggle the current item. |
| `x` | Open the main menu of actions for the selected panel. |
| `q` or `Esc` | Go back or quit the app entirely. |

## 🔍 FZF Fast File Searching
| Shortcut | Action |
| :--- | :--- |
| `Ctrl + T` | Opens an advanced FZF file picker with a live `bat` syntax-highlighted preview. |
| `Ctrl + F` | Custom shortcut: Opens the FZF file picker but strictly ignores hidden files/folders. |
