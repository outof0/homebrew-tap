cask "anypick" do
  version "1.1.2"
  sha256 "cc5f3a2fb2097d42931fc4d53030d46bf64a785bf66411a75c24d47b2463fc44"

  url "https://github.com/outof0/anypick/releases/download/v1.1.2/AnyPick-macos-universal.zip"
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
