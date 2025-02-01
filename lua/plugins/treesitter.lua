return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = { "lua", "python", "javascript" }, -- Aggiungi i linguaggi che usi
            highlight = {
                enable = true, -- Abilita evidenziazione
                additional_vim_regex_highlighting = false,
            },
        }
    end,
}

