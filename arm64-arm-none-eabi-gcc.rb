require 'formula'

class Arm64ArmNoneEabiGcc < Formula

  homepage 'https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads'
  version '12.2.Rel1'

  url 'https://developer.arm.com/-/media/Files/downloads/gnu/12.2.rel1/binrel/arm-gnu-toolchain-12.2.rel1-darwin-arm64-arm-none-eabi.tar.xz'
  sha256 '21a9e875250bcb0db8df4cb23dd43c94c00a1d3b98ecba9cdd6ed51586b12248'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
