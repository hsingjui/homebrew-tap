cask "mcpdock" do
  version "0.1.1"

  on_arm do
    url "https://github.com/hsingjui/mcpdock/releases/download/v#{version}/MCPDock-v#{version}-arm64.dmg",
        verified: "github.com/hsingjui/mcpdock/"
    sha256 "7de5aba6c2e8c59dad194fbfec2127c277b867b8242386ab5a8291dbfaa6ffba"
  end

  on_intel do
    url "https://github.com/hsingjui/mcpdock/releases/download/v#{version}/MCPDock-v#{version}-x64.dmg",
        verified: "github.com/hsingjui/mcpdock/"
    sha256 "3c857eb3eec0c7bab4d5a0e9e510083bbd1b1f37d8ba878189024a75e328835f"
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
