
{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
    };
    keymaps = {
      "<leader>e" = {
        action = "find_files";
	options = {desc = "Telescope find files";};
      };
      "<leader>E" = {
        action = "find_files";
        options = {
          desc = "Telescope find all files (including hidden/ignored)";
          hidden = true;
          no_ignore = true;
        };
      };
      "<leader>g" = {
        action = "grep_string";
	options = {desc = "Telescope grep string";};
      };
      "<leader>l" = {
        action = "live_grep";
	options = {desc = "Telescope live grep";};
      };
    };
  };
}
