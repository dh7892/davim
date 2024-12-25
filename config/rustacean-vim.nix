{
  rustacean-vim = {
    enable = true;
    server = {
        settings = {
          rust-analyzer = {
            inlayHints = {
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
}
