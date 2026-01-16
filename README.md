## Keybindings

<img width="1710" height="1112" alt="Screenshot 2026-01-16 at 17 07 52" src="https://github.com/user-attachments/assets/c61a4027-3705-4be8-984a-be886edbc324" />

# 🚀 AeroSpace Config

This repository contains my personal configuration for **AeroSpace**, an i3-like tiling window manager for macOS. It focuses on a clean aesthetic with functional gaps and a streamlined workflow for developers.

## 📋 Features
- **Config Version**: 2 (Modern syntax support).
- **Persistent Workspaces**: 10 dedicated workspaces that stay active.
- **Auto-Floating**: Intelligent rules for apps that don't need tiling (Finder, Telegram, Discord, etc.).
- **Gaps**: Spacious layout with 15px inner and outer gaps.
- **Mouse Following**: Focus follows monitor changes with lazy centering.

---

## ⌨️ Keybindings

The primary modifier key is **`Alt` (Option)**.

### Window Navigation & Control
| Key | Action |
| :--- | :--- |
| `Alt + Enter` | Launch **Kitty** Terminal |
| `Alt + Q` | Close focused window |
| `Alt + Arrow Keys` | Move focus (Left, Down, Up, Right) |
| `Alt + Shift + Arrow` | Move window position |
| `Alt + F` | Toggle Fullscreen |
| `Alt + -` / `Alt + =` | Smart Resize (Shrink/Grow) |

### Layouts & Workspaces
| Key | Action |
| :--- | :--- |
| `Alt + /` | Switch to **Tiles** layout |
| `Alt + ,` | Switch to **Accordion** layout |
| `Alt + U` | Toggle Tiling/Floating |
| `Alt + [1-0]` | Switch to Workspace 1-10 |
| `Alt + Shift + [1-0]` | Move window to Workspace 1-10 |
| `Alt + Tab` | Workspace back-and-forth |

### 🛠 Service Mode (`Alt + Shift + ;`)
Enter Service Mode to perform system actions. Once active, press:
- `R`: Reset layout (Flatten workspace tree).
- `F`: Toggle floating/tiling.
- `Backspace`: Close all windows except the current one.
- `Esc`: **Reload config** and return to Main Mode.

---

## 🖼 Window Rules (Auto-Floating)
The following applications are configured to open in **Floating** mode automatically to prevent layout disruption:
- **Communication**: Telegram, Discord, Mail.
- **Utilities**: Finder, Safari, Trello.
- **Media/System**: QuickTime, Camera, Elgato.

---

## ⚙️ Installation

1. Install **AeroSpace** via Homebrew or the official website.
2. Copy the configuration file to your home directory:
   ```bash
   cp ~/nix/home/aerospace/aerospace.toml ~/.aerospace.toml
