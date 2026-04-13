cask "claude-code-tool-manager" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.2"
  sha256 arm:   "766182184b030151177a83b65f81901f0e25afb8c3ef8805367a150725358404",
         intel: "be6423f1537697859ad15fe96162c3231bc5b44e668d9fc44efab0249c07dcaf"

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
