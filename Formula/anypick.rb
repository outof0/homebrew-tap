class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.1/anypick-1.1.1-darwin-arm64.tar.gz"
      sha256 "2f18d80b8a4bfea18d726978c7160a36fbb7f4982e3dd2a1a7a573fdb1b2cf64"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.1/anypick-1.1.1-darwin-amd64.tar.gz"
      sha256 "8632e74d32efd82e809aa3ae8a945dbd3762b6f438a3802555e25683b8c4731d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.1/anypick-1.1.1-linux-arm64.tar.gz"
      sha256 "d38008c397a36aa512362e364fb565f980631bfdbaf2fc8c568186e925cc4b74"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.1/anypick-1.1.1-linux-amd64.tar.gz"
      sha256 "58eec69c8c36d9600ae59af495fe265a2c7e1280432c10f1e45622825908717c"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
