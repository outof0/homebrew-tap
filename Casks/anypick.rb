cask "anypick" do
  version "1.1.1"
  sha256 "d4a77e33dc575b1fc78f8f1f640d0857722ceaaac45e16e1142564f20bb1b9d9"

  url "https://github.com/outof0/anypick/releases/download/v1.1.1/AnyPick-macos-universal.zip"
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
