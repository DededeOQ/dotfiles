local opt = vim.opt

-- Número de línea
opt.relativenumber = true
opt.number = true


--- Tabs y Sangría
opt.tabstop = 4		-- Un tab son 4 espacios
opt.shiftwidth = 4	-- Tamaño de la sangría
opt.expandtab = true	-- Convertir tabs en espacios
opt.autoindent = true	-- Mantener la sangría en la línea anterior

-- Apariencia y búsqueda
opt.termguicolors = true
opt.ignorecase = true 	-- Ignorar mayúsculas al buscar
opt.ignorecase = true	-- Si pones una mayúscula, se vuelve sensible
opt.cursorline = true	-- Resaltar línea actual

-- Desactivar el salto de línea automatico
opt.wrap = false

-- Opcional pero MUY recomendado para scroll horizontal:
opt.sidescrolloff = 8 -- Mantiene 8 caracteres de margen al hacer scroll horizontal.
opt.sidescroll = 1 -- El scroll horizontal es de 1 en 1 (más suave)


-- Desactivar el autocompletado de comentarios en la siguiente línea

-- 'r' -> No insertar comentario tras pulsar Enter en modo Insertar
-- 'o' -> No insertar comentario tras pulsar 'o' u 'O' en modo Normal
vim.opt.formatoptions:remove({"r","o"})
