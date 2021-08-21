# Lunarvim config

> My [Lunarvim](https://www.lunarvim.org/) config files

Here only to experiment. Soon to be migrated into my dotfiles.

## Structure

> The aim is to provide a modular structure to configure different options, plugins, languages,...

- In submodules like `languages` or `plugins`, an `init.lua` file is used. This file allows the option to export all module configuration in one export. In the `config.lua` we then can import the whole module.

```markdown
.
├── config.lua -> **Entry file, basic configuration and instantiation of plugins**
└── lua
    └── user 
        > **User configuration**
        ├── config.lua > **More complex user configuration**
        ├── keybindings.lua > **User keybindings**
        ├── languages
            > **Home for the configuration of all languages.**
            > **For example language server configurations, linters, formatters, debuggers, ...**
        │   ├── init.lua
        │   └── javascript.lua
        └── plugins --> **Home for the configurations and keybindings of all plugins**
            ├── bullets.lua
            ├── dashboard.lua
            ├── fugitive.lua
            ├── init.lua
            ├── nvimtree.lua
            ├── terminal.lua
            ├── treesitter.lua
            └── vim_markdown.lua
```
