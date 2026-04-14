cask "agenthub" do
  version "1.14.2"
  sha256 "95c580b458fa45ef86b51b244a341268877a5214a444b45fae23a4375cc4a209"

  url "https://github.com/scottkw/agenthub/releases/download/v#{version}/agenthub-v#{version}-darwin-universal.dmg"
  name "AgentHub"
  desc "AI coding session manager with tabbed terminals and Tailscale web access"
  homepage "https://github.com/scottkw/agenthub"

  depends_on macos: ">= :ventura"

  app "agenthub.app"
  binary "#{appdir}/agenthub.app/Contents/MacOS/agenthub"

  zap trash: [
    "~/Library/Application Support/agenthub",
    "~/Library/Preferences/com.scottkw.agenthub.plist",
    "~/Library/Caches/com.scottkw.agenthub",
    "~/Library/Logs/agenthub",
  ]
end
