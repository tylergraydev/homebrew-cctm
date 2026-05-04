cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "8360a8a549e28209c43d295ad14e9094836e4ce6795febb05aed0690b20cab67",
         intel: "ada2da7de542d1c74914d0a4e5b78186474cedeb88f40a1b522ec57c0939154f"

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
