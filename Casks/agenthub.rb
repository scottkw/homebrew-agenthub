cask "agenthub" do
  version "4.0"
  sha256 "3890568e3abdd433e438eb564e2a9c17dfbe4937fcd5e4b4f0b60e249d346531"

  url "https://github.com/scottkw/agenthub/releases/download/v#{version}/agenthub-v#{version}-darwin-universal.dmg"
  name "AgentHub"
  desc "AI coding session manager with tabbed terminals and Tailscale web access"
  homepage "https://github.com/scottkw/agenthub"

  depends_on macos: :ventura

  app "AgentHub.app"
  binary "#{appdir}/AgentHub.app/Contents/MacOS/AgentHub", target: "agenthub"

  zap trash: [
    "~/Library/Application Support/agenthub",
    "~/Library/Preferences/com.scottkw.agenthub.plist",
    "~/Library/Caches/com.scottkw.agenthub",
    "~/Library/Logs/agenthub",
  ]
end
