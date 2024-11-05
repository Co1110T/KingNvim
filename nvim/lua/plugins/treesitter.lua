return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate", -- 更新nvim-treesitter解析器
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- 启用语法高亮
      highlight = {
        enable = true,
      },
      -- 启用缩进
      indent = {
        enable = true,
      },
      -- 启用自动标记
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "vim",
        "lua",
        "bash",
        "c",
        "vimdoc",
        "cpp",
        "java",
        "javascript",
        "python",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>", -- 初始化文本对象
          node_incremental = "<C-space>", -- 增量选择更大的文本范围
          scope_incremental = true, -- 开启递增选择整个作用域
          node_decremental = "<bs>", -- 递减选择的文本范围
        },
      },
    })
  end,
}
