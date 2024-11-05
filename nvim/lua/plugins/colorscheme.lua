return {
  "folke/tokyonight.nvim", -- 下载插件
  lazy = false, -- 确保我们在启动过程中加载这个
  priority = 1000, -- 确保在其它启动插件之前加载这个
  config = function()
    -- 设置主题
    vim.cmd([[colorscheme tokyonight-moon]])
  end,
}
