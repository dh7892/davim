{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ./telescope.nix ./which-key.nix ./treesitter.nix ./lsp.nix ];
  colorschemes.ayu.enable = true;
  globals.mapleader = ",";
  plugins.toggleterm.enable = true;
  # Possible plugins to try:
  #surround = extra motions for surrounding text
  #spider = moving by words works differently (e.g. sub-words)
  #statuscol = status column - I started some setup, but couldn't seem to get it working got a sub-module ready for it
  # neoscroll
  # noice
  # smart-splits or tmux integration

  plugins.nvim-tree.enable = true;
  plugins.nvim-tree.updateFocusedFile.enable = true;
  plugins.nvim-tree.updateFocusedFile.updateRoot = true;
  plugins.notify.enable = true;
  plugins.nix.enable = true;
  plugins.neoscroll.enable = true;
  keymaps = [
    {
      action = "NvimTreeToggle";
      key = "<Leader>t";
      options.desc = "Open current folder in Nvim-tree";
    }
  ];
}
