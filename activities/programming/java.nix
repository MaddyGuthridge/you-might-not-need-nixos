{ config, pkgs, ... }:
let
  # Use Gradle 8.8
  archivePkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/d9f258945d3532e399d7f73fcd9b6fa5b4393e01.tar.gz";
  }) { };
  gradle_8_8 = archivePkgs.gradle_8;
in
{
  environment.systemPackages = with pkgs; [
    gradle_8_8
    jdk17
    jdt-language-server
  ];
}
