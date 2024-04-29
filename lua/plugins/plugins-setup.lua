local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    -- 主题
    "navarasu/onedark.nvim",
    -- 状态树
    "nvim-lualine/lualine.nvim",
    -- 文档树
    "nvim-tree/nvim-tree.lua",
    -- 文档树图标
    "nvim-tree/nvim-web-devicons",
    -- 用Ctrl-hjkl来定位窗口
    "christoomey/vim-tmux-navigator",
    -- 语法高亮
    "nvim-treesitter/nvim-treesitter",
    -- 语法高亮
    "p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分
    -- 自动补全
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
        "neovim/nvim-lspconfig"
    },

    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    -- snippets引擎，不装自动补全会出问题
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    -- 文件路径
    "hrsh7th/cmp-path",
    -- gcc和gc注释
    "numToStr/Comment.nvim",
    -- 自动补全括号
    "windwp/nvim-autopairs",
    -- buffer分割线
    "akinsho/bufferline.nvim",
    -- 左侧git提示
    "lewis6991/gitsigns.nvim",
    -- 文件检索
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = {
            {'nvim-lua/plenary.nvim'}
        }, -- requires要改为dependencies
    },
}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
