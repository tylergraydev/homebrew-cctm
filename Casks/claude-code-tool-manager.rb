cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "7354fddac107433ffb49249c00fd2b55cca9281dd9f5caaae5ccdf37b59bdbbd",
         intel: "8ba7a5d12f5ac0e3e500fa6a24d02f1565affc059cc63ee1152d8f9dde231f91"

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
