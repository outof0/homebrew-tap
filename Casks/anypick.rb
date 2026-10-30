cask "anypick" do
  version "1.2.1"
  sha256 "e158113af98b916a26202ed8333d15046760958b24c8297aed490385735b556a"

  url "https://github.com/outof0/anypick/releases/download/v1.2.1/AnyPick-macos-universal.zip"
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
