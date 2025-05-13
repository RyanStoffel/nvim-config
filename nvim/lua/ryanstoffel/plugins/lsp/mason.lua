return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-tool-installer
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of language servers for Mason to install
      ensure_installed = {
        "clangd",      -- C, C++
        "omnisharp",   -- C#
        "pyright",     -- Python
        "jdtls",       -- Java
        "html",        -- HTML
        "cssls",       -- CSS
        "ts_ls",       -- JavaScript, React, Next.js, Typescript
      },
    })

    mason_tool_installer.setup({
      -- list of formatters for Mason Tool Installer to install
      ensure_installed = {
        "clang-format",         -- C, C++ formatter
        "google-java-format",   -- Java formatter
        "prettier",             -- Formatter for HTML, CSS, JavaScript, React, Next.js, Typescript
        "stylua",               -- Lua formatter
        "isort",                -- Python formatter
        "black",                -- Python formatter
      },
    })
  end,
}

