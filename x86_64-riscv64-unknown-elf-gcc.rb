require 'formula'

class X8664Riscv64UnknownElfGcc < Formula

  homepage 'https://github.com/sifive/freedom-tools/releases'
  version '2020.12.8'

  url 'https://static.dev.sifive.com/dev-tools/freedom-tools/v2020.12/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-apple-darwin.tar.gz'
  sha256 'd0fc75a76cb2873576bc49f0014011de4dac24cd63ce4c67c985aa37167cf730'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
