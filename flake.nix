{
  description = "Akeyless custom producer examples - webhook-based custom secret producers in Go and Python";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs:
    (import "${inputs.substrate}/lib/repo-flake.nix" {
      inherit (inputs) nixpkgs flake-utils;
    }) {
      self = inputs.self;
      language = "shell";
      description = "Akeyless custom producer examples - webhook-based custom secret producers in Go and Python";
    };
}
