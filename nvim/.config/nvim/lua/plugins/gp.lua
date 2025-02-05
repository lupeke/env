return {
  "robitx/gp.nvim",
  opts = {
    providers = {
      ollama = {
        endpoint = "http://localhost:11434/v1/chat/completions",
      },
    },
    agents = {
      {
        name = "ChatOllamaLlama3.1-8B",
        disable = true,
      },
      {
        name = "CodeGPT4o",
        disable = true,
      },
      {
        name = "CodeGPT4o-mini",
        disable = true,
      },
      {
        name = "R1:8b",
        provider = "ollama",
        chat = true,
        command = true,
        model = { model = "deepseek-r1:8b" },
        system_prompt =
        "",
      },
      {
        name = "Deepseek6.7b",
        provider = "ollama",
        chat = true,
        command = true,
        model = { model = "deepseek-coder:6.7b" },
        system_prompt =
        "You are a seasoned fullstack SWE. Be concise and succint. KISS. Stick to simple solutions. Finaly, please don't start with `surely`.",
      },
    },
  },
}
