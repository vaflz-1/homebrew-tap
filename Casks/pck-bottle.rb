cask "pck-bottle" do
  version "1.0.2"
  sha256 "408201b5ae88b471ae62731c3b890d70c89ae9273729b5f1b52e1cf4d0c0b0c8"

  url "https://github.com/vaflz-1/PCK-Bottle/releases/download/v#{version}/PCK.Bottle.#{version}.dmg",
      verified: "github.com/vaflz-1/PCK-Bottle/"
  name "PCK Bottle"
  desc "Editor for Godot .pck game packages"
  homepage "https://github.com/vaflz-1/PCK-Bottle"

  app "PCK Bottle.app"

  caveats <<~EOS
    PCK Bottle is signed ad-hoc (Apple has not notarized it). If macOS blocks it,
    either install without quarantine:
      brew install --cask --no-quarantine pck-bottle
    or clear the flag once after installing:
      xattr -dr com.apple.quarantine "/Applications/PCK Bottle.app"
  EOS
end
