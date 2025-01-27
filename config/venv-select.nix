{ pkgs }:

pkgs.vimUtils.buildVimPlugin {
  pname = "venv-select";
  version = "2024-05-01";
  src = pkgs.fetchFromGitHub {
    owner = "linux-cultist";
    repo = "venv-selector.nvim";
    rev = "9b1bfe5aea225853e14358f504c656d4af007035";
    sha256 = "sha256-PTL0wwUE1sO6YlJNPnlNilKyR5kQDBYXiDM5gh6pkuM=";
  };
}
