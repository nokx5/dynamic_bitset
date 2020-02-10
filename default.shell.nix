{ clangSupport ? false, cudaSupport ? false }:

with (import <nixpkgs> { });

let stdenv = if clangSupport then clangStdenv else gccStdenv;
in (mkShell.override { inherit stdenv; }) rec {

  nativeBuildInputs = [ cmake ninja gnumake gdb catch2 ] # valgrind pkgconfig
    ++ lib.optional (!clangSupport) lcov; # [ sssd cacert ]

  buildInputs = [
    # blas hdf5 tbb
    # tbb
    boost
    # eigen
  ] # ++ lib.optionals cudaSupport [ cudatoolkit.cc ] # cudatoolkit nvidia_x11
    ++ lib.optional stdenv.hostPlatform.isDarwin fixDarwinDylibNames;

  shellHook = ''
    export PATH=/nix/var/nix/profiles/per-user/$USER/tools-dev/bin/:$PATH
  '';
}
