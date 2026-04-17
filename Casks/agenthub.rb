cask "agenthub" do
  version "2.1.2"
  sha256 "2b458a0bb695c01e11e4e42a9be7e7ea6741caafa7209a7ea849a48f677a9635"

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
