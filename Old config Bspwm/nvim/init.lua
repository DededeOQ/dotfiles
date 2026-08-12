-- Cargar opciones y keymaps básicos
require("core.options")
require("core.keymaps")

-- Setup de Lazy.nvim (gestor de plugins)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Instalación de plugins
require("lazy").setup({
    -- El que cierra paréntesis, llaves, etc.
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({})
        end
    },
    -- Un tema para que no se vea feo
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
})

-- Activar el tema
vim.cmd.colorscheme "catppuccin"
