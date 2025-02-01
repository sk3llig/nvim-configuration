local lspconfig = require('lspconfig')

-- Configura il Lua Language Server
lspconfig.lua_ls.setup {
  cmd = { "lua-language-server" },  -- Usa il comando per avviare il server
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",  -- Specifica la versione di Lua
      },
      diagnostics = {
        globals = { "vim" },  -- Aggiungi le variabili globali, ad esempio "vim"
      },
    },
  },
}

