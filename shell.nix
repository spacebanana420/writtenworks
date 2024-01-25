{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    libreoffice
    git
    vlc
    ffmpeg
  ];
}
