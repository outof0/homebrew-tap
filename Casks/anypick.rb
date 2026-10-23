cask "anypick" do
  version "1.1.4"
  sha256 "8f09a81c40bc4dbccdf2fd868598e2ad677ae298d9173a11247a3f5f6d30f060"

  url "https://github.com/outof0/anypick/releases/download/v1.1.4/AnyPick-macos-universal.zip"
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
