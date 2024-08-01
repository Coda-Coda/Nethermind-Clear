# Based on https://nixos.wiki/wiki/Flakes, used under the MIT license.
{ pkgs, pkgs-lean }:
with pkgs;
mkShell {
  buildInputs = [
    pkgs-lean.lean4
    stack
  ];
}