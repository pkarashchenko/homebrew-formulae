require 'formula'

class X8664XtensaEsp32s3ElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'
  version 'esp-12.2.0_20230208'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-12.2.0_20230208/xtensa-esp32s3-elf-12.2.0_20230208-x86_64-apple-darwin.tar.xz'
  sha256 '30375231847a9070e4e0acb3102b7d35a60448a55536bfa113c677c449da3eef'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
