cask "anypick" do
  version "1.2.0"
  sha256 "26c4e7f74e8abbd7eed747e70eb5f6f79da9045dd2671ef39dd62ccfc4686691"

  url "https://github.com/outof0/anypick/releases/download/v1.2.0/AnyPick-macos-universal.zip"
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
