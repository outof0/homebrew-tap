class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.4/anypick-1.1.4-darwin-arm64.tar.gz"
      sha256 "a6b7f1be98724a11e2ddd67e9237268b185e39e7b2786e06919ea90918aa3e4d"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.4/anypick-1.1.4-darwin-amd64.tar.gz"
      sha256 "e9a0ab8171f09c60b2ade08c36d781c4f8eae3e6c077f767401e7ebdeb3d14ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.4/anypick-1.1.4-linux-arm64.tar.gz"
      sha256 "11ad4c74346396e30c42ea352d688c09641a3b3e15885a3a511a40675f0667b7"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.4/anypick-1.1.4-linux-amd64.tar.gz"
      sha256 "17cfe720808a0e4ecd81270c3570fad90f4ce57b6c5abc9ad9618be7b6cf969d"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
