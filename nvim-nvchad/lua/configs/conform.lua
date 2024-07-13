local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettierd" },
    -- svelte = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    json = { "prettierd" },
    -- graphql = { "prettierd" },
    -- java = { "google-java-format" },
    -- kotlin = { "ktlint" },
    -- ruby = { "standardrb" },
    markdown = { "prettierd" },
    -- erb = { "htmlbeautifier" },
    -- html = { "htmlbeautifier" },
    -- bash = { "beautysh" },
    -- proto = { "buf" },
    -- rust = { "rustfmt" },
    yaml = { "yamlfix" },
    toml = { "taplo" },
    css = { "prettierd" },
    scss = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
