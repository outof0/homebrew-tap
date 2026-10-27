class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.5/anypick-1.1.5-darwin-arm64.tar.gz"
      sha256 "1d68649b66c1e320db2a762e165187189faa0b86dbc3f5961008e9ec643052c3"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.5/anypick-1.1.5-darwin-amd64.tar.gz"
      sha256 "5b58d3e4452e31b35051c7493513b60b702e72c509e5400561647520d79d22e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.5/anypick-1.1.5-linux-arm64.tar.gz"
      sha256 "362952e8d2a47d77cb7cf0dde5cd350b6f9307f47eabb036137435c3aa08d021"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.5/anypick-1.1.5-linux-amd64.tar.gz"
      sha256 "154adeacc7e067c57889776cdcac1a45bd2ae8617fca25ff8006ef52c8da109f"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
