# Lunarvim config

> My [Lunarvim](https://www.lunarvim.org/) config files

Here only to experiment. Soon to be migrated into my dotfiles.

## Install

> `git clone git@github.com:daniel-vera-g/lvim.git ~/.config/lvim/`

## Structure

> The aim is to provide a modular structure to configure different options, plugins, languages,...

- The config is built around modules which are instantiated in the `./config.lua` entryfile:
- In submodules like `languages` or `plugins`, an `init.lua` file is used. This file allows the option to export all module configuration in one export. In the `config.lua` we then can import the whole module and instantiate it.

### Modules

1. `./lua/user/config.lua`: General vim config
2. `./lua/user/lvim.lua`: Lunarvim built in config
3. `./lua/user/keybindings.lua`: Custom keybindings
4. `./lua/user/languages/init.lua`: Language specific configuration
5. `./lua/user/plugins/init.lua`: Plugin specific configuration
6. `./lsp-settings/`: Home for the Language server settings
7. `./snippets/`: Custom snippets in VSCode Format
8. `./spell/`: Own spell dictionaries

## References

Lunarvim:

1. Docs: https://www.lunarvim.org/
2. Repo: https://github.com/LunarVim/LunarVim
