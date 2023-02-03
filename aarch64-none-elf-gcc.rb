require 'formula'

class Aarch64NoneElfGcc < Formula

  homepage 'https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads'
  version '12.2.Rel1'

  url 'https://developer.arm.com/-/media/Files/downloads/gnu/12.2.rel1/binrel/arm-gnu-toolchain-12.2.rel1-darwin-arm64-aarch64-none-elf.tar.xz'
  sha256 '2434d966d8f170e9a8f6bd412e003b955caf30d9125ba3f51b80039193b029a4'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
