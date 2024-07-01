-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

vim.keymap.set("n", "<leader>y", function()
  local rp = vim.fn.expand("%:")
  local words = {}
  for word in string.gmatch(rp, "[^/]+") do
    table.insert(words, word)
    print(word)
  end
  local lastWord = words[#words]
  local dotIndex = string.find(lastWord, "%.")
  if dotIndex then
    lastWord = string.sub(lastWord, 1, dotIndex - 1)
  end
  words[#words] = lastWord

  -- Convert the last word from snake_case to PascalCase
  lastWord = string.gsub(" " .. lastWord, "%W%l", string.upper):sub(2)
  lastWord = string.gsub(lastWord, "_", "")

  -- Replace the last word in the words table
  table.insert(words, lastWord)

  -- Substitute slashes with dots
  local newPath = table.concat(words, ".")

  local command = 'echo "' .. newPath .. '" | pbcopy'
  os.execute(command)
end)

vim.keymap.set("n", "<leader>Dd", function()
  Util.terminal({ "lazydocker" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazygit (root dir)" })
vim.keymap.set("n", "<leader>DD", function()
  Util.terminal({ "lazydocker" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazygit (cwd)" })

vim.keymap.set("n", "<C-c>", "<C-a>")
