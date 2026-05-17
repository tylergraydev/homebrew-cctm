cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "eeb3d3e2a9d946a8d7d765440203bb9b6cdd6cb6ab5bb6610f4fff0530d09184",
         intel: "b378c8139fdbd4bce88da6768fd10bfd17454e930cebcd60e496d6aaddaa59db"

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
