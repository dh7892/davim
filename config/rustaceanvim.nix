{
  plugins.rustaceanvim = {
    enable = true;
    settings = {
        server = {
          cmd = ["rustup" "run" "nightly" "rust-analyzer"];
          default-settings = {
          rust-analyzer = {
            inlayHints = {
              enable = true;
              bindingModeHints.enable = true;
              closureReturnTypeHints.enable = "always";
              discriminantHints.enable = "always";
              expressionAdjustmentHints.enable = "always";
              lifetimeElisionHints.enable = "always";
              parameterHints.enable = true;
              typeHints.enable = true;
              chainingHints.enable = true;
            };
          };
        };
      };
    };
  };
}
