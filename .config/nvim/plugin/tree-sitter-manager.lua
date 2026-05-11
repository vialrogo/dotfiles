vim.pack.add {
  { src = "https://github.com/romus204/tree-sitter-manager.nvim" }
}

require("tree-sitter-manager").setup({
  ensure_installed = { "lua", "python", "markdown", "c", "cpp", "c_sharp", "latex", "bibtex", "cmake", "csv", "yaml", "html", "bash", },
  auto_install = true,
})
