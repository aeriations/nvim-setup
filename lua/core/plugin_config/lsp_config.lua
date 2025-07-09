
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright", "clangd", "rust_analyzer" },
})

local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local util = require("lspconfig.util")

local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
end

local servers = { "lua_ls", "pyright", "clangd", "rust_analyzer" }
for _, server in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  if server == "lua_ls" then
    opts.root_dir = function(fname)
      return util.root_pattern(".luarc.json", ".git")(fname)
        or util.path.dirname(fname)
    end
    opts.settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
          path = vim.split(package.path, ";"),
        },
        diagnostics = { globals = { "vim" } },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    }
  end
  lspconfig[server].setup(opts)
end

