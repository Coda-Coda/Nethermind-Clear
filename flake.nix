# Based on https://nixos.wiki/wiki/Flakes, used under the MIT license.
{
  description = "Nethermind Clear";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/58a1abdbae3217ca6b702f03d3b35125d88a2994";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
      );
}