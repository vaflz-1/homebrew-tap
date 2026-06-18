cask "pck-bottle" do
  version "1.0.1"
  sha256 "f3ee4da6591aa97e7e97e3cbfd0623d01b461ff7c72cbc17708f8dfdb6d994e6"

  url "https://github.com/vaflz-1/PCK-Bottle/releases/download/v#{version}/PCK.Bottle.#{version}.dmg",
      verified: "github.com/vaflz-1/PCK-Bottle/"
  name "PCK Bottle"
  desc "Editor for Godot .pck game packages"
  homepage "https://github.com/vaflz-1/PCK-Bottle"

  depends_on macos: ">= :high_sierra"

  app "PCK Bottle.app"

  caveats <<~EOS
    PCK Bottle is signed ad-hoc (Apple has not notarized it). If macOS blocks it,
    either install without quarantine:
      brew install --cask --no-quarantine pck-bottle
    or clear the flag once after installing:
      xattr -dr com.apple.quarantine "/Applications/PCK Bottle.app"
  EOS
end
