{ config, pkgs, ... }:
{
  imports = [
    ./java.nix
    ./js.nix
    ./nix.nix
    ./python.nix
    ./rust.nix
  ];
  environment.systemPackages = with pkgs; [
    ghostty
    unstable.vscode
    unstable.zed-editor
    unstable.nushell
    insomnia
    unstable.typst
    android-tools
  ];
}
