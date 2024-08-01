# Based on https://nixos.wiki/wiki/Flakes, used under the MIT license.
{
  description = "Nethermind Clear";

  # The danielb cache is helpful to avoid building lean v4.9.1 from source
  #  as it is not yet in nixpkgs.
  #  See https://github.com/NixOS/nixpkgs/pull/331445
  nixConfig.extra-substituters = [
    "https://danielb.cachix.org"
  ];
  nixConfig.extra-trusted-public-keys = [
    "danielb.cachix.org-1:CRN+CnEt6XZAgEuu7HqQ30/zdgXI6MW0lWzgMMuujEA="
  ];

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.nixpkgs-lean.url = "github:Coda-Coda/nixpkgs/update-lean4-to-v4.9.1";

  outputs = { self, nixpkgs, nixpkgs-lean, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        let pkgs-lean = nixpkgs-lean.legacyPackages.${system}; in
        {
          devShells.default = import ./shell.nix { inherit pkgs; inherit pkgs-lean; };
        }
      );
}