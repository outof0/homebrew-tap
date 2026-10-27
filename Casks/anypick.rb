cask "anypick" do
  version "1.1.5"
  sha256 "a850e2dac092b3fda36f1712c7270392466c9f5f7c51e51888ec4f00f7efadab"

  url "https://github.com/outof0/anypick/releases/download/v1.1.5/AnyPick-macos-universal.zip"
  name "AnyPick"
  desc "Native account and proxy manager for AI coding clients"
  homepage "https://github.com/outof0/anypick"

  app "AnyPick.app"

  caveats do
    <<~EOS
      AnyPick is not notarized. The first time you open it, right-click
      AnyPick.app and choose Open, or go to System Settings → Privacy & Security
      and choose Open Anyway. You can also remove the quarantine flag with:

        /usr/bin/xattr -dr com.apple.quarantine /Applications/AnyPick.app
    EOS
  end
end
