return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { -- 依赖项
    "nvim-tree/nvim-web-devicons", -- 增强nvim-tree图标显示
  },
  config = function()
    -- 官方推荐配置
    vim.g.loaded_netrw = 1 -- 禁用 netrw 插件 防止 netrw 在启动时自动加载
    vim.g.loaded_netrwPlugin = 1 -- 控制 netrw 插件的自动加载

    require("nvim-tree").setup({
      view = {
        --宽度
        width = 30,
        side = "left", -- 文件浏览器的位置 也可以设置成right
      },
      -- 更改文件夹箭头图标
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- 文件夹关闭时
              arrow_open = "", -- 文件夹打开时
            },
          },
        },
      },
      -- 禁用窗口选择器 ，使浏览器能够在窗口分割时正常工作
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      -- 忽略 Git 未跟踪的文件
      git = {
        ignore = false,
      },
    })
  end,
}
