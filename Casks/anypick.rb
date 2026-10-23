cask "anypick" do
  version "1.1.3"
  sha256 "755f3355713df2ab502f053bac4c975dc5af3794651293e685c711550520e5f0"

  url "https://github.com/outof0/anypick/releases/download/v1.1.3/AnyPick-macos-universal.zip"
  name "AnyPick"
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"

  app "AnyPick.app"

  caveats do
    <<~EOS
      AnyPick is not notarized. The first time you open it, right-click
      AnyPick.app and choose Open, or go to System Settings → Privacy & Security
      and choose Open Anyway. You can also remove the quarantine flag with:

        xattr -dr com.apple.quarantine /Applications/AnyPick.app
    EOS
  end
end
