return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    -- 为不同的文件类型定义使用的 linter
    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      c = { "colit" },
      java = { "checkstyle" },
      python = { "pylint" },
    }
    -- 创建一个自动命令组，用于管理与 lint 相关的自动命令
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    -- 创建自动命令，当进入缓冲区、文件写入后或离开插入模式时，尝试执行 lint 检查
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
    -- 设置普通模式下的键映射，使用 <leader>l 快捷键触发当前文件的 lint 检查
    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
