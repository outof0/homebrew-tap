class Anypick < Formula
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.2.2/anypick-1.2.2-darwin-arm64.tar.gz"
      sha256 "661c7f867d6a414be45bd39f1abe61b95b917eaa84b88e61e0ede9d342159535"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.2.2/anypick-1.2.2-darwin-amd64.tar.gz"
      sha256 "7a5724f89a1f0b64340671c2ce1739ca241946f882d40b7e64bfae7dd45bf863"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/outof0/anypick/releases/download/v1.2.2/anypick-1.2.2-linux-arm64.tar.gz"
      sha256 "573695e86310b10bab4e799093fc0f2f2de3e794545fcdec9f1e5bc4349e612a"
    else
      url "https://github.com/outof0/anypick/releases/download/v1.2.2/anypick-1.2.2-linux-amd64.tar.gz"
      sha256 "580a302f657c9b1602dfedac29d0ff7fb0f9936cc1b9611d870587cfc1688e3d"
    end
  end

  def install
    bin.install "anypick"
  end

  test do
    system bin/"anypick", "--version"
  end
end
