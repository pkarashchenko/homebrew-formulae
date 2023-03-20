require 'formula'

class Arm64XtensaEsp32ElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'
  version 'esp-12.2.0_20230208'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-12.2.0_20230208/xtensa-esp32-elf-12.2.0_20230208-aarch64-apple-darwin.tar.xz'
  sha256 'f50acab2b216e9475dc5313b3e4b424cbc70d0abd23ba1818aff4a019165da8e'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
