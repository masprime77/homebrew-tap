cask "semester-planner" do
  version "1.0.3"
  sha256 "5dbc71cd5f7bedd92a465aa4b406c11884b29bdac5f07b9dfd06f817648e91f0"

  url "https://github.com/masprime77/semester-planner/releases/download/v#{version}/Semester-Planner-#{version}-arm64-mac.zip"
  name "Semester Planner"
  desc "Minimal semester planner desktop app (Electron)"
  homepage "https://github.com/masprime77/semester-planner"

  app "Semester Planner.app"

  zap trash: [
    "~/Library/Application Support/Semester Planner",
    "~/Library/Preferences/com.masprime77.semester-planner.plist",
  ]
end
