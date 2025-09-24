return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  event = "BufEnter",
  config = function()
    require("codeium").setup {
      enable_beta_features = true,
      tools = {
        codeium = {
          language = "ru",
        },
      },
    }
  end,
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        options = {
          g = {
            ai_accept = function()
              if require("codeium").is_accepting_suggestion() then
                require("codeium").accept_suggestion()
                return true
              end
            end,
          },
        },
      },
    },
  },
}
