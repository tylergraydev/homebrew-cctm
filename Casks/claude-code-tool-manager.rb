cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.1"
  sha256 arm:   "96299ce8b072dfb2326940bf3cf391c30c7ac1b6d3998be7a8566476fbdf9d7f",
         intel: "68ed23ea8b360502b38cb10e969ddcee81004c134a6683b40bedba657362922a"

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
