return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                -- 修改左侧 explorer 宽度
                width = vim.g.explorer_width or nil,
              },
            },
          },
        },
      },
    },
  }
}
