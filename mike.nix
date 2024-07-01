{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    wget

    pkgs.android-studio
    pkgs.azure-cli
    pkgs.corefonts
    pkgs.docker_26
    pkgs.dotnetCorePackages.sdk_8_0_2xx
    pkgs.fira-code
    pkgs.firebase-tools
    pkgs.flutter319
    pkgs.gcc-unwrapped
    pkgs.git
    pkgs.go
    pkgs.google-chrome
    pkgs.nodejs_20
    pkgs.postman
    pkgs.python312
    pkgs.python312Packages.cython
    pkgs.python312Packages.pip
    pkgs.slack
    pkgs.starship
    pkgs.thefuck
    pkgs.vistafonts
    pkgs.vscode
    pkgs.wineWowPackages.fonts
    pkgs.wgo
  ];


  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };
}
