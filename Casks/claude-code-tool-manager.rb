cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.4.1"
  sha256 arm:   "ab59fad9c96649753fe48e9387172409619fb99c9cd6ee7f59e4d64ae3f9814d",
         intel: "a8a959d408183ab9de2d1b107627f1078249e4feeea970f81dd3be4b956203d3"

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
