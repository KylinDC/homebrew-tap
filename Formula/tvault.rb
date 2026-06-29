class Tvault < Formula
  desc "Touch ID-secured environment variable vault for macOS"
  homepage "https://github.com/KylinDC/TouchVault"
  version "0.0.2"
  license "MIT"

  on_macos do
    url "https://github.com/KylinDC/TouchVault/releases/download/v#{version}/tvault-v#{version}-macos-universal.tar.gz"
    sha256 "PLACEHOLDER_SHA256"
  end

  def install
    bin.install "tvault"
  end

  def caveats
    <<~EOS
      To enable shell completions, add the following to your shell config:

        zsh:  tvault --generate-completion-script zsh > ~/.zsh/completions/_tvault
        fish: tvault --generate-completion-script fish > ~/.config/fish/completions/tvault.fish

      If macOS blocks the binary, remove the quarantine flag:
        xattr -d com.apple.quarantine #{HOMEBREW_PREFIX}/bin/tvault
    EOS
  end

  test do
    system "#{bin}/tvault", "--version"
  end
end
