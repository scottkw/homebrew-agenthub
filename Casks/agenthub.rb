cask "agenthub" do
  version "3.3.2"
  sha256 "1a111e8b9329c28613595307830e875adf568ae52c807c35613afc9a99a7a6cd"

  url "https://github.com/scottkw/agenthub/releases/download/v#{version}/agenthub-v#{version}-darwin-universal.dmg"
  name "AgentHub"
  desc "AI coding session manager with tabbed terminals and Tailscale web access"
  homepage "https://github.com/scottkw/agenthub"

  depends_on macos: ">= :ventura"

  app "AgentHub.app"
  binary "#{appdir}/AgentHub.app/Contents/MacOS/AgentHub", target: "agenthub"

  zap trash: [
    "~/Library/Application Support/agenthub",
    "~/Library/Preferences/com.scottkw.agenthub.plist",
    "~/Library/Caches/com.scottkw.agenthub",
    "~/Library/Logs/agenthub",
  ]
end
