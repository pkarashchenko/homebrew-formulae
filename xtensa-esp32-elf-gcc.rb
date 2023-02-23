require 'formula'

class XtensaEsp32ElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'
  version 'esp-2022r1'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-2022r1/xtensa-esp32-elf-gcc11_2_0-esp-2022r1-macos.tar.xz'
  sha256 '1c9d873c56469e3abec1e4214b7200d36804a605d4f0991e539b1577415409bf'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
