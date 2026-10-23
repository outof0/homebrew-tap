class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.3/anypick-1.1.3-darwin-arm64.tar.gz"
      sha256 "dad013f0f8c81d48d92ef9fa9b703e52e3747197f4db63c5a7acb6ec173a8a55"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.3/anypick-1.1.3-darwin-amd64.tar.gz"
      sha256 "d202a8e3a5cf73cc2f95a8810665d0e57a29a7fb16e698f64ee034772ca6f141"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.3/anypick-1.1.3-linux-arm64.tar.gz"
      sha256 "f0fbff79fb47cf8a9522a6c2b8b12aaf30d5306089ff5522cee8e3d6578fc65c"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.3/anypick-1.1.3-linux-amd64.tar.gz"
      sha256 "e33fcd4a5d54d08791abc84de73505c7b4c167b71a6f00e56d7fd6cde0f67327"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
