class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.2.1/anypick-1.2.1-darwin-arm64.tar.gz"
      sha256 "402f2b378330ce5aaf7bf96614339297bad6b25a4210afd5135fdedc9906c303"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.2.1/anypick-1.2.1-darwin-amd64.tar.gz"
      sha256 "98ec697868f91cad5baed29b4fca2e3136a4c9c79fc22bc1d9a5ef4ea8f3a064"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.2.1/anypick-1.2.1-linux-arm64.tar.gz"
      sha256 "3df691d60b6c35d19120a1c9e66c07389b74cc66964c332391ca5cabd1981da8"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.2.1/anypick-1.2.1-linux-amd64.tar.gz"
      sha256 "1e1576cf46ae69210ddc9fe0b66165bb219f81a7a62508579a611ec72c8bd3d1"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
