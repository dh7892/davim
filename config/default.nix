{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ./telescope.nix ./which-key.nix ./treesitter.nix ./lsp.nix ];
  colorschemes.ayu.enable = true;
  globals.mapleader = ",";
  plugins = {
    tmux-navigator.enable = true;
    toggleterm.enable = true;
    # Possible plugins to try:
    #surround = extra motions for surrounding text
    #spider = moving by words works differently (e.g. sub-words)
    #statuscol = status column - I started some setup, but couldn't seem to get it working got a sub-module ready for it
    # neoscroll
    # noice
    nvim-tree = {
      enable = true;
      updateFocusedFile.enable = true;
      updateFocusedFile.updateRoot = true;
    };
    notify.enable = true;
    nix.enable = true;
    neoscroll.enable = true;
};
 keymaps = [
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>t";
      options = {
        silent = true;
        desc = "Toggle File Tree";
      };
    }
  ];
}
