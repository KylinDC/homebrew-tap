class Bbdown < Formula
  desc "Command-line Bilibili video downloader"
  homepage "https://github.com/nilaoda/BBDown"
  version "1.6.3"
  release_date = "20240814"
  
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nilaoda/BBDown/releases/download/#{version}/BBDown_#{version}_#{release_date}_osx-x64.zip"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nilaoda/BBDown/releases/download/#{version}/BBDown_#{version}_#{release_date}_osx-arm64.zip"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nilaoda/BBDown/releases/download/#{version}/BBDown_#{version}_#{release_date}_linux-x64.zip"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nilaoda/BBDown/releases/download/#{version}/BBDown_#{version}_#{release_date}_linux-arm64.zip"
    end
  end

  # depends_on "dotnet" => :build

  def install
    bin.install "BBDown"
    
    # Make the binary executable
    chmod 0755, bin/"BBDown"
  end

  def caveats
    <<~EOS
      BBDown requires ffmpeg for video processing. Install it with:
        brew install ffmpeg

      For enhanced download performance, you can also install aria2:
        brew install aria2

      Usage:
        BBDown --help
        BBDown [URL]
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/BBDown --version 2>&1", 1)
  end
end
