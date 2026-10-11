cask "anypick" do
  version "1.1.0"
  sha256 "d3ba775502491fd4a490ad323a1979953a2bc6eba15684c97e305d412578c3e2"

  url "https://github.com/outof0/anypick/releases/download/v1.1.0/AnyPick-macos-universal.zip"
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
