require 'formula'

class Arm64XtensaEsp32s3ElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'
  version 'esp-12.2.0_20230208'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-12.2.0_20230208/xtensa-esp32s3-elf-12.2.0_20230208-aarch64-apple-darwin.tar.xz'
  sha256 'ae9a1a3e12c0b6f6f28a3878f5964e91a410350248586c90db94f8bdaeef7695'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
