class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.2/anypick-1.1.2-darwin-arm64.tar.gz"
      sha256 "1094e0d6f55f95a73716ef47353f4a776875b7efcadbfe9af99b2907d20f9478"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.2/anypick-1.1.2-darwin-amd64.tar.gz"
      sha256 "b33560681cbbdfad19003e86db4a107bf8cc51d78947f061f7f97cbe3895539c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.2/anypick-1.1.2-linux-arm64.tar.gz"
      sha256 "6f7ca8f8f3c3a241dad4675731e472dc75228002e39f92d282a9d40e5353359b"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.2/anypick-1.1.2-linux-amd64.tar.gz"
      sha256 "8bb1a3b9b8f498d619505068efa7a2033d7aec8e036670b227c38e3fb81346f2"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
