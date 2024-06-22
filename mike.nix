{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    wget

    pkgs.docker_26
    pkgs.dotnetCorePackages.sdk_8_0_2xx
    pkgs.fira-code
    pkgs.flutter319
    pkgs.fnm
    pkgs.git
    pkgs.google-chrome
    pkgs.python312
    pkgs.slack
    pkgs.starship
    pkgs.thefuck
    pkgs.vscode
  ];
}
