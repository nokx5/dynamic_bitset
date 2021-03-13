{ clangSupport ? false, cudaSupport ? false }:

with (import <nixpkgs> { });



let
# clangStdenv.override (x: {
#   cc = x.cc.override (_: {
#     libcxx = llvmPackages.libcxx;
#   });
# }))

stdenv = if clangSupport then clangStdenv else gccStdenv;
in (mkShell.override { inherit stdenv; }) rec {

  nativeBuildInputs = [  gnumake cmake ninja meson gdb catch2 ] # valgrind pkgconfig
    ++ lib.optional (!clangSupport) lcov; # [ sssd cacert ]

  buildInputs = [
    # binutils-unwrapped
    # llvm
    # protobuf
    # stdenv.cc.cc.lib
    # libcxxStdenv
    # libcxx
    # libcxxabi
    # blas hdf5 tbb
    # tbb
    boost
    # eigen
  ] # ++ lib.optionals cudaSupport [ cudatoolkit.cc ] # cudatoolkit nvidia_x11
    ++ lib.optional stdenv.hostPlatform.isDarwin fixDarwinDylibNames
    ;

  shellHook = ''
    export PATH=/nix/var/nix/profiles/per-user/$USER/tools-dev/bin/:$PATH
  '';
}
