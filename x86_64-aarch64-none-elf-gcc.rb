require 'formula'

class X8664Aarch64NoneElfGcc < Formula

  homepage 'https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads'
  version '12.2.Rel1'

  url 'https://developer.arm.com/-/media/Files/downloads/gnu/12.2.rel1/binrel/arm-gnu-toolchain-12.2.rel1-darwin-x86_64-aarch64-none-elf.tar.xz'
  sha256 '91e063b3a07ee915fbbfdf03b98899e6b239ed0f69c705f4b5bc66ec03879e1a'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
