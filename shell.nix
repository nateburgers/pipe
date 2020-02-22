with import <nixpkgs> {}; {
  shellEnv = stdenv.mkDerivation {
    name = "BurgerLib";
    buildInputs = [ ccls ];
    shellHook = ''
      export CMAKE_C_COMPILER=${pkgs.gcc}/bin/gcc
      export CMAKE_CXX_COMPILER=${pkgs.gcc}/bin/g++
    '';
  };
}
