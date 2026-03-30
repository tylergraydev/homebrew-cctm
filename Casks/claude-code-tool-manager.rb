cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.0"
  sha256 arm:   "c6775f88ee4cc5f357965733a36a1e11829506d7c1453976af752e74678a1fa1",
         intel: "8b7190965e23ff5961131b9f911b572d9c19b2495e459f09ecaf1514aaf0bb9e"

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
