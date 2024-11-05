return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {},
  -- stylua: ignore
  keys = {
    -- 恢复会话
    { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
    -- 选择会话
    { "<leader>qS", function() require("persistence").select() end,desc = "Select Session" },
    -- 恢复上次会话
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    -- 不保存当前会话
    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
  },
}
