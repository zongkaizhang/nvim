-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- enable incremental selection
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  -- ensure these language parsers are installed
  ensure_installed = {
    "awk",
    "bash",
    "c",
    "c_sharp",
    "cmake",
    "cpp",
    "css",
    "cuda",
    "dockerfile",
    "git_rebase",
    "gitcommit",
    "gitignore",
    "go",
    "html",
    "htmldjango",
    "http",
    "ini",
    "java", "json",
    "javascript",
    "latex",
    "lua",
    "markdown",
    "markdown_inline",
    "matlab",
    "perl",
    "php",
    "python",
    "query",
    "r",
    "regex",
    "ruby",
    "scss",
    "sql",
    "swift",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
  -- auto install above language parsers
  auto_install = true,
})
