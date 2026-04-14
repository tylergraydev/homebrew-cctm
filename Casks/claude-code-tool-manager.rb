cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.3"
  sha256 arm:   "87cc43a7330b4b95c0aa0dd3e4b82a3db5d4809fcd1d4fb5e3cd62e1f943543d",
         intel: "54609607556cadfe4fec25bcd2d7b6cf7ea07b1560b6b1e22202ccb8fdaf60cd"

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
