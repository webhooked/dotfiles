local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeFocus<cr>')

local function print_node_path(node)
  print(node.absolute_path)
end

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    number = true,
    relativenumber = true,
    mappings = {
      list = {
        { key = "p", action = "print_path", action_cb = print_node_path },
        { key = "u", action = "dir_up" },
        { key = "e", action = "preview"},
        { key = "<Tab>", action = "cd"}
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
