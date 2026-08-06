{
  description = "Node.js development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux"; # Adjust to your architecture if needed (e.g., aarch64-darwin)
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs_26 # Or another specific version like nodejs_20
        ];
      };
    };
}
