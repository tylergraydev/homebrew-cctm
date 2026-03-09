cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "295f158cb22e1213d91f9eb6887cdfab44e3753b781ce44c2d3937173f10f71e",
         intel: "99407ab92893ac19fc57f08ef4452281d753e9dd826e5d9ae1b32f1a87e3245e"

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
