local mini_surround = require("mini.surround")
local mini_pick = require("mini.pick")
local mini_extra = require("mini.extra")
local mini_cmdline = require("mini.cmdline")
local mini_notify = require("mini.notify")
local mini_completion = require("mini.completion")
local mini_diff = require("mini.diff")

mini_surround.setup()
mini_pick.setup()
mini_extra.setup()

mini_cmdline.setup({
    autocorrect = { enable = false }
})

mini_notify.setup({
    content = {
        format = function(notif)
            return notif.msg
        end,
    }
})

mini_completion.setup({
    lsp_completion = {
        auto_setup = true,
        process_items = function(items, base)
            return mini_completion.default_process_items(items, base, {
                filtersort = "fuzzy",
            })
        end,
    },
})

mini_diff.setup({
    view = {
        style = "sign",
        signs = {
            add = "▎",
            change = "▎",
            delete = ""
        }
    }
})

vim.keymap.set("n", ";s", function() mini_pick.builtin.files() end, { desc = "mini file picker" })
vim.keymap.set("n", ";S", function() mini_pick.builtin.grep({ pattern = vim.fn.expand("<cword>") }) end,
    { desc = "grep word" })
vim.keymap.set("n", ";h", function() mini_pick.builtin.help() end, { desc = "mini help" })

vim.keymap.set("n", ";xx", function() mini_extra.pickers.diagnostic() end, { desc = "mini picker diagnostics" })
vim.keymap.set("n", ";k", function() mini_extra.pickers.keymaps() end, { desc = "search keymaps" })

vim.keymap.set("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true, desc = "next completion item" })
vim.keymap.set("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
    { expr = true, desc = "previous completion item" })
vim.keymap.set("i", "<CR>", [[pumvisible() ? "\<C-y>" : "\<CR>"]], { expr = true, desc = "accept completion" })
