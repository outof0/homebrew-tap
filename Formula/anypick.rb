class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.2.0/anypick-1.2.0-darwin-arm64.tar.gz"
      sha256 "5b193c47fadf79503be3777c54d3a07584e91a025fd92b7bdccb9a74849f27c4"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.2.0/anypick-1.2.0-darwin-amd64.tar.gz"
      sha256 "c39fdb9cd6da2083d811498f4fcd34fa88036d61239ae995e2f7294c3dc8700e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.2.0/anypick-1.2.0-linux-arm64.tar.gz"
      sha256 "3a671aac3f8b12a3f17f733d57ad3dbd41dd90f9b37bf844ec9d081736a6eaa7"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.2.0/anypick-1.2.0-linux-amd64.tar.gz"
      sha256 "d83e7155aff968e7f83b2f4f1bdc72353199668b0ddd532c6a3d64c2999fae3c"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
