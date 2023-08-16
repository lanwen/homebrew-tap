cask "testcontainers-desktop" do
  version "1.4.10"
  sha256 "1a53b71bb4344e79a29aa0b49b0ed04ce9e13ada2af8b562dd89e173afbfe795"

  url "https://app.testcontainers.cloud/download/testcontainers-desktop_#{version}_darwin_universal.dmg",
      user_agent: "brew-cask"
  name "Testcontainers Desktop"
  desc "Tescontainers desktop application for local testing and development"
  homepage "https://app.testcontainers.cloud/"

  conflicts_with cask: "testcontainers-cloud-desktop"

  livecheck do
    url "https://app.testcontainers.cloud/api/versions"
    strategy :page_match do |page|
      JSON.parse(page)["latest"]
    end
  end

  app "Testcontainers Desktop.app"

  postflight do
    system_command "open",
                   args: ["#{appdir}/Testcontainers Desktop.app"]
  end

  uninstall delete: [
              "~/Library/Caches/AtomicJar",
            ],
            quit:   [
              "com.atomicjar.desktop",
            ]

  zap trash:  [
        "~/.config/testcontainers",
        "~/Library/Logs/AtomicJar",
      ],
      delete: [
        "~/Library/LaunchAgents/testcontainers.desktop.plist",
      ]
end
