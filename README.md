# ⚙️ dotfiles & config

> My personal development environment configuration — i3, Zsh, PHP CS Fixer, and more.

A collection of configuration files and scripts to quickly set up and replicate my Linux development environment. Includes window manager settings, status bar customization, shell configuration, and project bootstrapping utilities.

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Contents](#-contents)
- [Requirements](#-requirements)
- [Installation](#-installation)
- [Usage](#-usage)
- [License](#-license)

---

## 📖 Overview

This repository stores my personal dotfiles and config files for the tools I use daily. The goal is to have a single source of truth for my environment so I can spin up a new machine or restore my setup with minimal friction.

---

## 📁 Contents

| File / Folder | Description |
|---|---|
| `i3/` | i3 window manager configuration (keybindings, layouts, autostart) |
| `i3blocks/` | i3blocks config for the status bar blocks (CPU, RAM, date, etc.) |
| `i3status/` | i3status configuration for the default i3 status bar |
| `.zshrc` | Zsh shell configuration (aliases, exports, plugins, prompt) |
| `php-cs-fixer.php` | PHP CS Fixer ruleset for consistent PHP code style |
| `start-proyects.sh` | Shell script to spin up all required services for local development |

---

## ⚙️ Requirements

- **OS:** Linux (tested on a distribution using i3wm)
- **Shell:** Zsh
- **Window Manager:** [i3](https://i3wm.org/)
- **Status Bar:** i3blocks / i3status
- **PHP CS Fixer** *(optional, for PHP projects)*

---

## 🚀 Installation

### 1. Clone the repository

```bash
git clone https://github.com/soundOfff/config.git ~/config
cd ~/config
```

### 2. Symlink the config files

Link each file to its expected location:

```bash
# Zsh
ln -sf ~/config/.zshrc ~/.zshrc

# i3
ln -sf ~/config/i3 ~/.config/i3

# i3blocks
ln -sf ~/config/i3blocks ~/.config/i3blocks

# i3status
ln -sf ~/config/i3status ~/.config/i3status

# PHP CS Fixer
ln -sf ~/config/php-cs-fixer.php ~/.php-cs-fixer.php
```

### 3. Reload your environment

```bash
source ~/.zshrc
i3-msg restart
```

---

## 🛠️ Usage

### Start projects script

The `start-proyects.sh` script automates spinning up local development services (servers, containers, etc.) so you don't have to do it manually every time.

```bash
chmod +x start-proyects.sh
./start-proyects.sh
```

> Edit the script to match your own project paths and services before running it.

### PHP CS Fixer

Apply the custom ruleset to a PHP project:

```bash
php-cs-fixer fix /path/to/project --config=~/.php-cs-fixer.php
```

---

## 📄 License

Personal configuration files — feel free to use, fork, or adapt anything here for your own setup.
