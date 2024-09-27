{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ./telescope.nix ./which-key.nix ./treesitter.nix ./lsp.nix ./copilot-vim.nix ];
  colorschemes.ayu.enable = true;
  globals.mapleader = ",";
  plugins = {
    floaterm.enable = true;
    tmux-navigator.enable = true;
    toggleterm.enable = true;
    commentary.enable = true;
    dap = {
      enable = true;
      extensions.dap-python.enable = true;

    };
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
  extraConfigLua = ''
  -- Command to toggle inline diagnostics
vim.api.nvim_create_user_command(
  'DiagnosticsToggleVirtualText',
  function()
    local current_value = vim.diagnostic.config().virtual_text
    if current_value then
      vim.diagnostic.config({virtual_text = false})
    else
      vim.diagnostic.config({virtual_text = true})
    end
  end,
  {}
)

-- Command to toggle diagnostics
vim.api.nvim_create_user_command(
  'DiagnosticsToggle',
  function()
    local current_value = vim.diagnostic.is_disabled()
    if current_value then
      vim.diagnostic.enable()
    else
      vim.diagnostic.disable()
    end
  end,
  {}
)
  '';

  keymaps = [
    {
      action = "<cmd>DiagnosticsToggle<CR>";
      key = "<leader>d";
      options = {
        silent = true;
        desc = "Toggle Diagnistic info";
      };
    }
    {
      action = "<cmd>DiagnosticsToggleVirtualText<CR>";
      key = "<leader>i";
      options = {
        silent = true;
        desc = "Toggle Inline Diagnistic text";
      };
    }
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>t";
      options = {
        silent = true;
        desc = "Toggle File Tree";
      };
    }
    {
      action = "<cmd>bnext<CR>";
      key = "gt";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }
    {
      action = "<cmd>bprev<CR>";
      key = "gT";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      key = "<leader>r";
      options = {
        silent = true;
        desc = "Rename current symbol";
      };
    }

  ];
}
