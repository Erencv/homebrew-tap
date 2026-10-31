cask "shotpipe" do
  version "0.1.0"
  sha256 "78f4fdedbaba5b25894cd495c8eb66d1f71e1d5dd7e838149cca8b1f3eac2ceb"

  url "https://github.com/Erencv/shotpipe/releases/download/v#{version}/Shotpipe-macOS-universal.zip"
  name "Shotpipe"
  desc "Seamless screenshots from your Mac to your dev servers"
  homepage "https://github.com/Erencv/shotpipe"

  app "Shotpipe.app"

  caveats <<~EOS
    Launch it from ~/Applications or Spotlight, then enable "Start at login"
    from its menu bar icon. Servers need the CLI too:
      https://github.com/Erencv/shotpipe#each-server
  EOS
end
