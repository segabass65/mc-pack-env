{ pkgs ? import <nixpkgs> {} }: pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    gnumake
    minizip-ng
    nixd
    yq
  ]; 
}
