cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "83b28adddffaf8a9568749ca40cdc44975de2035adbac0d4c5a644326e0f92fa",
         intel: "7e0f163f57c5dfd9c3744c9aa6582dd58aa945424fb7ea33cbd1458c5dbd532c"

  url "https://github.com/tylergraydev/claude-code-tool-manager/releases/download/v#{version}/Claude.Code.Tool.Manager_#{version}_#{arch}.dmg"
  name "Claude Code Tool Manager"
  desc "Manage tools and MCP servers for Claude Code CLI"
  homepage "https://github.com/tylergraydev/claude-code-tool-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Claude Code Tool Manager.app"

  zap trash: [
    "~/Library/Application Support/com.claude-code-tool-manager.app",
    "~/Library/Caches/com.claude-code-tool-manager.app",
    "~/Library/Preferences/com.claude-code-tool-manager.app.plist",
    "~/Library/Saved Application State/com.claude-code-tool-manager.app.savedState",
  ]
end
