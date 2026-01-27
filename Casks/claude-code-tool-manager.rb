cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "e20f18ec524514bf7aaabd4f5842f96292f82cba69db603575d5e5f969b7eee9",
         intel: "86904ef44dd48badeddf6199a3c243e0e2ef28139ef8f02b8dd503d9f4e3a3ce"

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
