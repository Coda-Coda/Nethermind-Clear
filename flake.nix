# Based on https://nixos.wiki/wiki/Flakes, used under the MIT license.
{
  description = "Nethermind Clear";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:Coda-Coda/nixpkgs/update-lean4-to-v4.10.0";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
      );
}