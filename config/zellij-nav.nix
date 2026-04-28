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
      -- When inside Zellij, Ctrl-h/j/k/l moves between Neovim splits first,
      -- then falls through to Zellij panes at the edges.
      -- When inside tmux, tmux-navigator handles this instead.
      require("zellij-nav").setup()
    '';
  };
}
