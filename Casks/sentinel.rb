cask "sentinel" do
  version "1.0"
  sha256 "99ca43fd5fac45dec1071d921240cc5e82edbbe73541e1d04509c0e0d2fad4d7"

  url "https://sentinel.thoughtasylum.com/downloads/v#{version}/Sentinel.dmg"
  name "Sentinel"
  desc "Menu-bar app for running and monitoring long-lived scripts"
  homepage "https://sentinel.thoughtasylum.com"

  auto_updates true
  depends_on macos: :sonoma

  app "Sentinel.app"

  zap trash: [
    "~/Library/Application Support/Sentinel",
    "~/Library/Preferences/com.thoughtasylum.sentinel.plist",
  ]
end
