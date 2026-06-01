cask "semester-planner" do
  version "1.3.0"
  sha256 "353457534e103b54882e877b29dedd8025df410926592adf6d7950a6164fd0a3"

  url "https://github.com/masprime77/semester-planner/releases/download/v#{version}/Semester-Planner-#{version}-arm64-mac.zip",
      verified: "github.com/masprime77/semester-planner/"
  name "Semester Planner"
  desc "Minimal semester planner desktop app (Electron)"
  homepage "https://github.com/masprime77/semester-planner"

  # Only an arm64 (Apple Silicon) build is published.
  depends_on arch: :arm64

  app "Semester Planner.app"

  # The build is ad-hoc signed (not notarized), so strip the download quarantine
  # on install — otherwise Gatekeeper blocks the first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "/Applications/Semester Planner.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Semester Planner",
    "~/Library/Preferences/com.tu-usuario.semester-planner.plist",
  ]
end
