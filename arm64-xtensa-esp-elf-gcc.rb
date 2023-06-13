require 'formula'

class Arm64XtensaEspElfGcc < Formula

  homepage 'https://github.com/espressif/crosstool-NG/releases'

  url 'https://github.com/espressif/crosstool-NG/releases/download/esp-15.1.0_20250607/xtensa-esp-elf-15.1.0_20250607-aarch64-apple-darwin.tar.xz'
  sha256 '0cd6922eb3414a2011099db5095547dfea9c829ed83a0950a73a585afa844fde'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
