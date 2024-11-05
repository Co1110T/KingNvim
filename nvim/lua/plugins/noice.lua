return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },

  config = function()
    local noice = require("noice")

    noice.setup({
      lsp = {
        -- 覆盖默认的 Markdown 渲染方式
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- 启用预设
      presets = {
        bottom_search = true, --  使用传统的底部命令行为搜索
        command_palette = true, --  调整命令行和弹出菜单的位置
        long_message_to_split = true, --  长消息将被发送到 split 也就是分段显示
      },
      views = {
        cmdline_popup = {
          position = {
            row = 5, -- 这里设置命令行的行位置
            col = "50%", -- 这里设置命令行的列位置，可以是百分比或者具体的数值
          },
          size = {
            width = 60, -- 这里设置命令行的宽度
            height = "auto", -- 这里设置命令行的高度，"auto" 表示自动高度
          },
        },
      },
      filter = {
        event = "lsp",
        kind = "progress",
      },
    })
  end,
}
