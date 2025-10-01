return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixirls = { mason = false }, -- disables Mason autoinstall
        -- For servers not in Mason, set mason = false
        sourcekit = { mason = false },
        dartls = {
          mason = false, -- if not available in Mason
          cmd = { "dart", "language-server", "--protocol=lsp" },
          filetypes = { "dart" },
          init_options = {
            closingLabels = true,
            flutterOutline = true,
            onlyAnalyzeProjectsWithOpenFiles = true,
            outline = true,
            suggestFromUnimportedLibraries = true,
          },
          settings = {
            dart = {
              completeFunctionCalls = true,
              showTodos = true,
            },
          },
        },
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 8096,
              },
            },
          },
        },
      },
    },
  },
}
