cask "agenthub" do
  version "2.1.4"
  sha256 "a4a431fff8a278d56d430bcd11c05895ab6c402c57defea707acaa978d80d1dc"

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
