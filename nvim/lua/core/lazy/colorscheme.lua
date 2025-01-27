return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- wave(default) dragon(dark) lotus(light)
        vim.cmd("colorscheme kanagawa-dragon")
    end,
}
