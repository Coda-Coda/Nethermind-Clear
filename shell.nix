# Based on https://nixos.wiki/wiki/Flakes, used under the MIT license.
{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    lean4
    stack
  ];
}