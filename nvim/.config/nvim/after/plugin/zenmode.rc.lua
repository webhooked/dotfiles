local status, zenMode = pcall(require, "zen-mode")
if (not status) then return end

zenMode.setup {
    window = {
        width = 90,
        options = {
            number = true,
            relativenumber = true,
        }
    },
}

vim.keymap.set("n", "<leader>zz", function()
    zenMode.toggle()
    vim.wo.wrap = false
end)
