return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" },
  config = function()
    require("bufferline").setup({
      options = {
        -- 悬停事件
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        offsets = { -- 偏移模块
          {
            filetype = "NvimTree", -- 当NvimTree被激活的时候显示
            text = "File Explorer", -- 定义了偏移模块显示的文本内容
            highlight = "Directory", -- 指定了文本的高亮组
            text_align = "left", -- 定义了文本的对齐方式
          },
        },
      },
    })
  end,
}
