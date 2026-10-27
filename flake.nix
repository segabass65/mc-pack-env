{
  description = ''
    📦 Automated packaging environment and
    template for Minecraft resource and data packs.
  '';

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, utils, ... }: utils.lib.eachDefaultSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};

  in {
    devShells.default = import ./shell.nix { inherit pkgs; };
  });
}
