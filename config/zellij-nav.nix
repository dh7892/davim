{ ... }:
{
  config = {
    extraConfigLua = ''
      -- Ctrl-hjkl navigate Neovim splits.
      -- The Zellij-side WASM plugin (vim-zellij-navigator v0.3.0+) detects
      -- whether the focused pane is running Neovim. If so, it passes Ctrl-hjkl
      -- through; if Neovim is at an edge split, Zellij navigates panes instead.
      vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, desc = "Navigate left split" })
      vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, desc = "Navigate down split" })
      vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, desc = "Navigate up split" })
      vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, desc = "Navigate right split" })
    '';
  };
}
