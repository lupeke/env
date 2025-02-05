return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      toml = { "prettierd" },
      markdown = { "prettierd" },
      html = { "prettierd" },
      python = { "black" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
