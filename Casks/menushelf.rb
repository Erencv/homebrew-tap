cask "menushelf" do
  version "0.1.0"
  sha256 "f1d7a2a51fca908aad7058c7b40e72d860e907bc7d2f35a0c5dd2f02ebaaaab3"

  url "https://github.com/Erencv/menushelf/releases/download/v#{version}/MenuShelf-macOS-universal.zip"
  name "MenuShelf"
  desc "Choose which Mac menu bar icons stay visible and collapse the rest"
  homepage "https://github.com/Erencv/menushelf"

  app "MenuShelf.app"

  # macOS 26 quarantines every network download, including Homebrew's, and
  # hard-blocks ad-hoc signed apps at first launch. Clear the flag once.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MenuShelf.app"]
  end

  caveats <<~EOS
    MenuShelf prompts for Accessibility permission on first launch; grant it
    under System Settings → Privacy & Security → Accessibility. Click the │
    divider in the menu bar to open its controls.
  EOS
end
