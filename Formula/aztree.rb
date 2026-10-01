# aztree's own release executables, one per platform. .github/workflows/update.yml moves this to each new release.
class Aztree < Formula
  desc "See where your Azure money goes, as a treemap in one offline HTML page"
  homepage "https://github.com/milanm/aztree"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.9.2/aztree-osx-arm64"
      sha256 "6762eb22aad4b87bda2854c8ad417a3a3a9b03281d3d43448bd05f338824b4aa"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.9.2/aztree-osx-x64"
      sha256 "83df64df54a1275b303e1d01ea73c7531b79f0b8a70757bca0210d952d1d872c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.9.2/aztree-linux-arm64"
      sha256 "d0074326ef73a9a41395f4d5b068c42f14c55c28961da252f75ad4b20b787912"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.9.2/aztree-linux-x64"
      sha256 "c55d5d83408a34d697e1d7eb72677aec803c7254b3587a8249c374dcec0ec104"
    end
  end

  def install
    bin.install Dir["aztree-*"].first => "aztree"
  end

  test do
    assert_match "aztree #{version}", shell_output("#{bin}/aztree --version")
  end
end
