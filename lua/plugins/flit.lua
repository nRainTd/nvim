return {
  {
    -- 拓展 leap.nvim 插件，使得按 f/F/t/T 也能多行跳转
    -- 没有这个插件，leap.nvim 只能按 s/S + 两个字母跳转
    -- 有这个插件后，leap.nvim 可以按 f/F/t/T + 单个字母跳转
    "ggandor/flit.nvim",
    enabled = true,
    keys = function()
      ---@type LazyKeysSpec[]
      local ret = {}
      for _, key in ipairs({ "f", "F", "t", "T" }) do
        ret[#ret + 1] = { key, mode = { "n", "x", "o" } }
      end
      return ret
    end,
    opts = { labeled_modes = "nx" },
  }
}
