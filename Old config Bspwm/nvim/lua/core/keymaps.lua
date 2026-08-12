vim.g.mapleader = " "	-- Definimos el Espacio como Leader

local keymap = vim.keymap -- Para abreviar

keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

-- Limpiar el resaltado de búsqueda con Leader + l
keymap.set("n", "<leader>l", ":nohl<CR>")

-- Gestión de ventanas (Splits)
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontal
keymap.set("n", "<leader>sx", ":close<CR>") -- cerrar split


-- Shortcuts para archivos (Guardar / salir)

keymap.set("n", "<leader>w", ":w<CR>", { desc = "Guarda Archivo"})
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Salir"})
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Guardar y salir"})
keymap.set("n", "<leader>W", ":w!<CR>", { desc = "Guardar forzado"})
keymap.set("n", "<leader>Q", ":q!<CR>", { desc = "Salir forzado"})
keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Guardar todo"})

-- Navegación entre ventanas (Splits) con Ctrl + h j k l
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Mover a la ventana izquierda"})
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Mover a la ventana de abajo"})
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Mover a la ventana de arriba"})
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Mover a la ventana derecha"})

-- Cambiar el tamaño de las ventanas con flechas (opcional pero muy útil)
keymap.set("n", "<C-Up>", ":resize +2<CR>")
keymap.set("n", "<C-Down>", ":resize -2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navegar entre Buffers (archivos abiertos)
keymap.set("n", "<S-L>", ":bnext<CR>", { desc = "Siguiente Buffer"})
keymap.set("n", "<S-H>", ":bprevious<CR>", { desc = "Buffer anterior"})
