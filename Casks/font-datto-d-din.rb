cask "font-datto-d-din" do
  version "1.0"

  url "https://github.com/amcchord/datto-d-din/archive/refs/heads/master.zip"
  name "D-DIN"
  desc "Open-source typeface based on DIN 1451 standard"
  homepage "https://github.com/amcchord/datto-d-din"

  font "datto-d-din-main/D-DIN.otf"
  font "datto-d-din-main/D-DIN-Bold.otf"
  font "datto-d-din-main/D-DIN-Italic.otf"
  font "datto-d-din-main/D-DINCondensed.otf"
  font "datto-d-din-main/D-DINCondensed-Bold.otf"
  font "datto-d-din-main/D-DINExp.otf"
  font "datto-d-din-main/D-DINExp-Bold.otf"
  font "datto-d-din-main/D-DINExp-Italic.otf"

  # No zap stanza required
end
