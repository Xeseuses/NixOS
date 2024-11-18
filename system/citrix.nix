{ stdenv, fetchurl, ... }:

stdenv.mkDerivation rec {
  name = "citrix-24.8.0.98";

  src = fetchurl {
    url = "file:///home/ruben/Downloads/linuxx64-24.8.0.98.tar.gz";  # Local file path
    sha256 = "77cdfc0b8f28e90b978b0fef79db21f13a3f8cd91aa50727da976cf68c1562c9  /home/ruben/Downloads/linuxx64-24.8.0.98.tar.gz";  # Your computed sha256 hash
  };

  buildInputs = [];

  unpackPhase = ''
    tar xzf $src
  '';

  installPhase = ''
    mkdir -p $out
    cp -r * $out/
  '';
}
