require('gitsigns').setup {
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
        end, {expr=true})

        map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
        end, {expr=true})

        -- Actions
        map('n', '<leader>gu', gs.reset_hunk)
        map('v', '<leader>gu', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
        map('n', '<leader>gU', gs.reset_buffer)
        map('n', '<leader>gp', gs.preview_hunk)
        map('n', '<leader>gB', function() gs.blame_line{full=true} end)
        map('n', '<leader>gb', gs.toggle_current_line_blame)
        map('n', '<leader>gd', gs.diffthis)
        map('n', '<leader>gD', function() gs.diffthis('~') end)
        map('n', '<leader>gt', gs.toggle_deleted)
    end
}

