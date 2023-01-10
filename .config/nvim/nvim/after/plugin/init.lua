function Colorise(color)
  color = color or "PaperColor"
  vim.cmd.colorscheme(color)
end

Colorise()
