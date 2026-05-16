cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "a4c6180acf35dc32826275969bda517dcce6f0cb0e3e2c7e6ade0b7edf4c33f7",
         intel: "0bebe895ad3011f2da4cc1fe54834e4b2b56e48a304babf563e695140819f672"

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
