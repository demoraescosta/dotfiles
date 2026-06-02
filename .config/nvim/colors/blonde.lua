-- ~/.config/nvim/colors/blonde.lua

vim.o.termguicolors = true
vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "blonde"

local set = vim.api.nvim_set_hl
local black = '#3d2f20'
local white = '#f5efe5'
local red = '#7a3a30'
local green = '#3a5e3c'
local yellow = '#a68866'
local blue = '#304a54'
local magenta = '#a24d4a'
local cyan = '#6a7a89'
local gray = '#777777'

-- Base UI

set(0, "Normal",        { fg = black, bg = white })
set(0, "NormalFloat",   { fg = black, bg = white })
set(0, "Cursor",        { fg = white, bg = black })
set(0, "CursorLine",    { fg = white, bg = black })
set(0, "Visual",        { fg = white, bg = black })
set(0, "LineNr",        { fg = black })
set(0, "LineNrAbove",   { fg = gray })
set(0, "LineNrBelow",   { fg = gray })
set(0, "NonText",       { fg = gray })
set(0, "MatchParen",    { bg = gray })
set(0, "TermCursor",    { fg = white, bg = black })

-- Syntax 

local fg = black

set(0, "Identifier",    { fg = fg })
set(0, "Function",      { fg = fg })
set(0, "Statement",     { fg = red })
set(0, "Conditional",   { fg = red })
set(0, "Keyword",       { fg = yellow })
set(0, "Repeat",        { fg = red })
set(0, "StorageClass",  { fg = green })
set(0, "Structure",     { fg = red })
set(0, "Typedef",       { fg = green })
set(0, "PreProc",       { fg = magenta })
set(0, "Include",       { fg = magenta })
set(0, "Define",        { fg = magenta })
set(0, "Macro",         { fg = magenta })
set(0, "Special",       { fg = fg })
set(0, "Type",          { fg = green })

set(0, "Comment",       { fg = gray, italic = true })
set(0, "String",        { fg = yellow })
set(0, "Number",        { fg = magenta })
set(0, "Constant",      { fg = magenta })

set(0, "StatusLine",    { fg = white, bg = black })
set(0, "StatusLineNC",  { fg = black, bg = white })
