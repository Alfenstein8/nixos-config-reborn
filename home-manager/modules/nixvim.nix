{ pkgs, lib, ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    rev= "02a85bd29333ce9fbde0d2c57a2378f47205bb21";
  });
in
{
  imports = [
    # For home-manager
    nixvim.homeManagerModules.nixvim
    # For NixOS
    # nixvim.nixosModules.nixvim
    # For nix-darwin
    # nixvim.nixDarwinModules.nixvim
  ];

  programs.nixvim.enable = true;
}
