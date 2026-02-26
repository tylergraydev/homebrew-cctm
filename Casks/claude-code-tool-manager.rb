cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.4"
  sha256 arm:   "5e20a2115547f116fd1331d62eb581785c1de8c902a45a89f545657dfdd9be87",
         intel: "5b2634db79e934d87ed2e0acdba81bef6fcaeaef21c6106343318b42fcf3b80e"

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
