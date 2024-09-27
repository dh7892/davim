{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      pyright.enable = true;
      ruff.enable = true;
      rust-analyzer.enable = true;
      rust-analyzer.installCargo = true;
      rust-analyzer.installRustc = true;
      gopls.enable = true;
    };
    keymaps.lspBuf = {
      K = "hover";
      gD = "references";
      gd = "definition";
      gi = "implementation";
      gt = "type_definition";
    };
  };
  plugins.lsp-format.enable = true;
  plugins.lsp-lines.enable = true;
}
