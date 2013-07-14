with import <nixpkgs> {};

pythonPackages.buildPythonPackage rec {
  name = "hetzner-${version}";
  version = "0.3.0";
  src = ./.;
  doCheck = false;
  installCommand = "python setup.py install --prefix=$out";
}
