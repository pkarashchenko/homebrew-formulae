require 'formula'

class X8664XtensaEspElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-13.2.0_20230928/xtensa-esp-elf-13.2.0_20230928-x86_64-apple-darwin.tar.xz'
  sha256 'b9b7a6d1dc4ea065bf6763fa904729e1c808d6dfbf1dfabf12852e2929251ee9'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
    Dir.glob(prefix/"gcc/lib/xtensa_esp*.so") { |file| lib.install_symlink file }
  end
end
