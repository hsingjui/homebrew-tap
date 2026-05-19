cask "mcpdock" do
  version "0.1.2"

  on_arm do
    url "https://github.com/hsingjui/mcpdock/releases/download/v#{version}/MCPDock-v#{version}-arm64.dmg",
        verified: "github.com/hsingjui/mcpdock/"
    sha256 "019475a8aaef6cbbfcca81388b88fcafca02146a17150fd3b06da2ff8c485cdb"
  end

  on_intel do
    url "https://github.com/hsingjui/mcpdock/releases/download/v#{version}/MCPDock-v#{version}-x64.dmg",
        verified: "github.com/hsingjui/mcpdock/"
    sha256 "4035fb8c826667dc625a6b3a0e2b3904d7b9703721c64489b39040a630cf1712"
  end

  name "MCPDock"
  desc "MCP server management and aggregation gateway on your desktop"
  homepage "https://github.com/hsingjui/mcpdock"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MCPDock.app"

  zap trash: [
    "~/Library/Application Support/MCPDock",
    "~/Library/Preferences/com.hsingjui.mcpdock.plist",
    "~/Library/Saved Application State/com.hsingjui.mcpdock.savedState",
  ]
end
