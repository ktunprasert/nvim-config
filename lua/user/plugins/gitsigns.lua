local ok, gitsigns = pcall(require, "gitsigns")
if not ok then
    return
end

local keymap = require('lib.utils').keymap

gitsigns.setup {
    current_line_blame = true,
    numhl = true,
}

local _opts = { expr = true }

local gs = package.loaded.gitsigns

keymap('n', ']c', function()
    if vim.wo.diff then return ']c' end
    vim.schedule(function() gs.next_hunk() end)
    return '<Ignore>'
end, _opts)

keymap('n', '[c', function()
    if vim.wo.diff then return '[c' end
    vim.schedule(function() gs.prev_hunk() end)
    return '<Ignore>'
end, _opts)

keymap('n', ']g', function()
    if vim.wo.diff then return ']g' end
    vim.schedule(function() gs.next_hunk() end)
    return '<Ignore>'
end, _opts)

keymap('n', '[g', function()
    if vim.wo.diff then return '[g' end
    vim.schedule(function() gs.prev_hunk() end)
    return '<Ignore>'
end, _opts)
