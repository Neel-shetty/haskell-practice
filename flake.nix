{
  description = "Flake for Haskell development";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      formatter.${system} = pkgs.nixfmt;
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          (pkgs.haskellPackages.ghcWithPackages (haskellPackages: with haskellPackages; [
            cabal-install
          ]))
          pkgs.haskell-language-server
          pkgs.hlint
        ];

        shellHook = ''
          exec zsh
        '';
      };
    };
}

