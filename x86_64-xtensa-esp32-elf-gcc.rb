require 'formula'

class X8664XtensaEsp32ElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'
  version 'esp-12.2.0_20230208'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-12.2.0_20230208/xtensa-esp32-elf-12.2.0_20230208-x86_64-apple-darwin.tar.xz'
  sha256 'b09d87fdb1dc32cd1d718935065ef931b101a14df6b17be56748e52640955bff'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
