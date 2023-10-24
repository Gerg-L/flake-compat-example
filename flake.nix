{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

    e.url = "./subflake";
    flake-compat.url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";

  };

  outputs = inputs: {
    packages.x86_64-linux.default = inputs.nixpkgs.legacyPackages.x86_64-linux.hello;
  };
}
