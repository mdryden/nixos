{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    wget

    pkgs.albert
    pkgs.azure-cli
    pkgs.docker_26
    pkgs.dotnetCorePackages.sdk_8_0_2xx
    pkgs.fira-code
    pkgs.flutter319
    pkgs.git
    pkgs.google-chrome
    pkgs.nodejs_20
    pkgs.python312
    pkgs.slack
    pkgs.starship
    pkgs.thefuck
    pkgs.vscode
    pkgs.wineWowPackages.fonts
  ];


  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };
}
