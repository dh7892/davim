{ pkgs, ... }:
let
  zellij-nav = pkgs.vimUtils.buildVimPlugin {
    pname = "zellij-nav-nvim";
    version = "unstable";
    src = pkgs.fetchFromGitHub {
      owner = "swaits";
      repo = "zellij-nav.nvim";
      rev = "main";
      sha256 = "0acb5zfiljfiz1is98drj54mv211m8qqmxmi5acc1s2mcr56z31s";
    };
  };
in
{
  config = {
    extraPlugins = [ zellij-nav ];
    extraConfigLua = ''
      -- Zellij-nav: vim-aware pane navigation for Zellij
      -- Works with zellij-autolock which puts Zellij in locked mode when
      -- Neovim is focused. Ctrl-hjkl navigate Neovim splits first, then
      -- call `zellij action move-focus` at edges.
      require("zellij-nav").setup()

      vim.keymap.set("n", "<C-h>", "<cmd>ZellijNavigateLeftTab<cr>", { silent = true, desc = "Navigate left (vim split or zellij pane)" })
      vim.keymap.set("n", "<C-j>", "<cmd>ZellijNavigateDown<cr>", { silent = true, desc = "Navigate down (vim split or zellij pane)" })
      vim.keymap.set("n", "<C-k>", "<cmd>ZellijNavigateUp<cr>", { silent = true, desc = "Navigate up (vim split or zellij pane)" })
      vim.keymap.set("n", "<C-l>", "<cmd>ZellijNavigateRightTab<cr>", { silent = true, desc = "Navigate right (vim split or zellij pane)" })

      -- When leaving Neovim, switch Zellij back to normal mode
      -- so that Ctrl-hjkl resumes navigating Zellij panes directly.
      vim.api.nvim_create_autocmd("VimLeave", {
        pattern = "*",
        command = "silent !zellij action switch-mode normal",
      })
    '';
  };
}
