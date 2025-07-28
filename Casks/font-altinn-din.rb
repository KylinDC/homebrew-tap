cask "font-altinn-din" do
  version "2.0"

  url "https://github.com/Altinn/altinn-din/archive/refs/heads/master.zip"
  name "Altinn-DIN"
  desc "Open-source font based on DIN 1451 typeface"
  homepage "https://github.com/Altinn/altinn-din"

  font "altinn-din-master/generated/otf/Altinn-DIN.otf"
  font "altinn-din-master/generated/otf/Altinn-DIN-Bold.otf"
  font "altinn-din-master/generated/otf/Altinn-DIN-Italic.otf"
  font "altinn-din-master/generated/otf/Altinn-DINCondensed.otf"
  font "altinn-din-master/generated/otf/Altinn-DINCondensed-Bold.otf"
  font "altinn-din-master/generated/otf/Altinn-DINExp.otf"
  font "altinn-din-master/generated/otf/Altinn-DINExp-Bold.otf"
  font "altinn-din-master/generated/otf/Altinn-DINExp-Italic.otf"

  # No zap stanza required
end
