-------------------------------------------------------------------------------
-- For conciseness
-------------------------------------------------------------------------------
local opt = vim.opt
local wo = vim.wo


-------------------------------------------------------------------------------
-- Line settings
-------------------------------------------------------------------------------
-- line numbers
opt.relativenumber = true   -- show relative line numbers
opt.number = true           -- shows absolute line number on cursor line (when relative number is on)

-- line wrapping
opt.wrap = false            -- disable line wrapping

-- cursor line
opt.cursorline = true       -- highlight the current cursor line
wo.colorcolumn = "120"      -- set line width identifier

-------------------------------------------------------------------------------
-- Tabs & Indentation
-------------------------------------------------------------------------------
opt.tabstop = 4             -- spaces for tabs (prettier default)
opt.shiftwidth = 4          -- spaces for indent width
opt.expandtab = true        -- expand tab to spaces
opt.autoindent = true       -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true       -- ignore case when searching
opt.smartcase = true        -- if you include mixed case in your search, assumes you want case-sensitive

-------------------------------------------------------------------------------
-- Appearance
-------------------------------------------------------------------------------

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark"     -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"      -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start"  -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-------------------------------------------------------------------------------
-- Windows
-------------------------------------------------------------------------------
-- split windows
opt.splitright = true       -- split vertical window to the right
opt.splitbelow = true       -- split horizontal window to the bottom

opt.iskeyword:append("-")   -- consider string-string as whole word

-------------------------------------------------------------------------------
-- File
-------------------------------------------------------------------------------
opt.backup = false
opt.writebackup = false
opt.swapfile = false

