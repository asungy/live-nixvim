{ pkgs, makeNixvimWithModule, }:
let
  default = import ./default { inherit pkgs; };
  makeModule = path: makeNixvimWithModule {
    inherit pkgs;
    module = import path { inherit pkgs default; };
  };
in
{
  default = makeNixvimWithModule {
    inherit pkgs;
    module = { config = default; };
  };

  cpp    = makeModule ./cpp;
  go     = makeModule ./go;
  lua    = makeModule ./lua;
  nix    = makeModule ./nix;
  python = makeModule ./python;
  rust   = makeModule ./rust;
  ts     = makeModule ./ts;
  zig    = makeModule ./zig;
}
