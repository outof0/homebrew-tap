class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.0/anypick-1.1.0-darwin-arm64.tar.gz"
      sha256 "84f9d9fdfe2bf39a2969acba3d3b2d8022913737e436d92a6bc59f886f6f45cc"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.0/anypick-1.1.0-darwin-amd64.tar.gz"
      sha256 "e7b784154bc4bc71577a87b6d1f4cc088da6f3a7fc1b6dc47ffa9916a7c907d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.1.0/anypick-1.1.0-linux-arm64.tar.gz"
      sha256 "6fc0488cc9b152d3eba39a46773ea122de5e8c3cb18c63e7cf12e7027a0cb4dc"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.1.0/anypick-1.1.0-linux-amd64.tar.gz"
      sha256 "928d83bc2b6803b96891b7f7029ec5b567d136eed8eca161a958c8dbbf69fe88"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
