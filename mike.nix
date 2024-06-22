{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    wget

    pkgs.docker_26
    pkgs.dotnetCorePackages.sdk_8_0_2xx
    pkgs.flutter319
    pkgs.git
    pkgs.google-chrome
    pkgs.libnotify
    pkgs.python312
    pkgs.slack
    pkgs.starship
    pkgs.vscode
  ];
}
