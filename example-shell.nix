with import <nixpkgs> { };
with import ./default.nix { stdenv = stdenv; };

runCommand "dummy" {
  buildInputs = [
    (idrisWithPackages [ idris-config ])
  ];
} ""
