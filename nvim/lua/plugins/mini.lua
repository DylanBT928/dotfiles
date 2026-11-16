local mini_surround = require("mini.surround")
local mini_pick = require("mini.pick")
local mini_extra = require("mini.extra")
local mini_pairs = require("mini.pairs")
local mini_cmdline = require("mini.cmdline")
local mini_notify = require("mini.notify")
local mini_completion = require("mini.completion")
local mini_diff = require("mini.diff")
local mini_hipatterns = require("mini.hipatterns")

mini_surround.setup()
mini_pick.setup()
mini_extra.setup()
mini_pairs.setup()

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

mini_hipatterns.setup({
    highlighters = {
        fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
        hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
        todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
        note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
        hex_color = mini_hipatterns.gen_highlighter.hex_color()
    },
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

vim.keymap.set("i", "<CR>", function()
    if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ "selected" }).selected ~= -1 then
        return "<C-y>"
    end

    return mini_pairs.cr()
end, { expr = true, replace_keycodes = true, desc = "accept completion or pair enter" })
