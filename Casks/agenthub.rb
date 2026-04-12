cask "agenthub" do
  version "1.13.2"
  sha256 "07b9d9113d4bc54a5541df19069a5610de51228d3cf3ee23eb84190a0ebf76a5"

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
