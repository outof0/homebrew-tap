cask "anypick" do
  version "1.2.2"
  sha256 "e87d45a748f025cb0122c887d3800ef29988f734f15fc9457273d4ba1c827c58"

  url "https://github.com/outof0/anypick/releases/download/v1.2.2/AnyPick-macos-universal.zip"
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
