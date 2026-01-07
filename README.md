# Arch Linux Configuration

This repository contains all configuration files and scripts required to create a reproducible Arch Linux setup. It is primarily maintained for personal use, but you are welcome to use any part of it.

## Structure

- `config/`  
  Contains user configuration files.

- `scripts/user/`  
  User-level scripts that do not require root privileges.  
  For example, scripts to create symlinks for configuration files.

- `scripts/system/`  
  System-level scripts and configuration intended for system-wide setups  
  (e.g. idling configuration).

## Usage

⚠️ Warning
Always review scripts before running them.

You can copy configuration files directly from the config/ directory.
Alternatively, use the install script to automatically create symlinks:

```sh
scripts/user/install-config.sh
```
Caution: This script is destructive, it removes existing destination files and replaces them with the versions from the repository.
