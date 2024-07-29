# Clear.

<img width="600" alt="Clear - Github (1)" src="https://github.com/NethermindEth/Clear/assets/114106639/9d92cbbc-5a55-4808-ae48-525647c1c0d6">

## GitHub Codespaces instructions (added by Daniel)
*Before use ensure your usage is permitted by the [license](./LICENSE.MD).*

Please note this is an *unofficial* version of the [NethermindEth/Clear](https://github.com/NethermindEth/Clear) repository, the only changes are related to adding support for GitHub Codespaces and making the dependencies available when using the [Nix package manager](https://nixos.org).

*Note: Codespaces have free quotas but are not free in general, for more information see [here](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces).*

1. [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/Coda-Coda/Nethermind-Clear) or [resume your existing Codespace](https://codespaces.new/Coda-Coda/Nethermind-Clear?quickstart=1). It will take a while to create a new Codespace, resuming an existing Codespace should be much quicker.
2. From the `vc` direcotry, run `stack run vc ../out/peano.yul --nix`
3. Open any `.lean` file, ignore the error about `elan` (an appropriate version of lean will be already installed). You can interact and carry out proofs as described in the [Lean 4 VSCode extension manual](https://github.com/leanprover/vscode-lean4/blob/master/vscode-lean4/manual/manual.md).
4. Delete the Codespace once you are finished, to avoid being charged for [storage costs](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces).

For general information about GitHub Codespaces, please see: https://github.com/features/codespaces.

This setup makes use of the Nix package manager, see https://nixos.org for more information.

------------------

Prove anything* about Yul programs.

There are two parts.
  - A Lean framework with a Yul model.
  - A verification condition generator.

## The Lean framework
*Note: this step is done automatically in the setup of a GitHub Codespace.*

Download and install Lean 4. One can follow https://lean-lang.org/lean4/doc/quickstart.html.

Then simply run the following in the root directory:
```
lake build
```

## The verification condition generator (vc)
*Note: this step is done automatically in the setup of a GitHub Codespace.*

Download and install Stack. One can follow https://docs.haskellstack.org/en/stable/install_and_upgrade/.

Then simply run the following in the `vc` directory:
```
stack build
```
Or, if using Nix:
```
nix develop
stack build --nix
```

## Verifying it all works
*Note: this step is __NOT__ done automatically in the setup of a GitHub Codespace.*

In the `vc` directory, run:
```
stack run vc ../out/peano.yul
```
Or, if using Nix:
```
nix develop
stack run vc ../out/peano.yul --nix
```

You should get a `Generated` folder corresponding with the structure of the Peano example
in the `out/peano.yul` file.
