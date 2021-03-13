{ clangSupport ? false, cudaSupport ? false }:

with (import <nixpkgs> { });

let stdenv = if clangSupport then clangStdenv else gccStdenv;
in (mkShell.override { inherit stdenv; }) rec {

  nativeBuildInputs = [
    gnumake
    cmake
    ninja
    meson
    pkgconfig
    binutils-unwrapped
    gdb
    llvm
    # valgrind
    catch2
  ] ++ lib.optional (!clangSupport) [ gcovr lcov ]; # [ sssd cacert ]

  buildInputs = [
    glibcLocales # avoid stdenv.cc.libc
    boost
    # protobuf blas eigen hdf5
    # tbb
  ] ++ lib.optional stdenv.hostPlatform.isDarwin fixDarwinDylibNames
    ++ lib.optional (cudaSupport && !stdenv.hostPlatform.isDarwin) [
      cudatoolkit.cc
      nvidia_x11
    ];

  shellHook = ''
    export PATH=/nix/var/nix/profiles/per-user/$USER/tools-dev/bin/:$PATH
  '';
}
