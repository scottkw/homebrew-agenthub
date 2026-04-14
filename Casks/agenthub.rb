cask "agenthub" do
  version "1.14.4"
  sha256 "036012e0f0cf7aea00cb05f96acedcea696640dd3f7b2ccae8c5fb31139e4678"

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
