cask "agenthub" do
  version "3.0"
  sha256 "5d8ffe8ad0c5182a629a8f5a787d810f3ce6bfa3a9fbf0710c968b571b6cba4c"

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
