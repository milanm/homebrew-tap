# aztree's own release executables, one per platform. .github/workflows/update.yml moves this to each new release.
class Aztree < Formula
  desc "See where your Azure money goes, as a treemap in one offline HTML page"
  homepage "https://github.com/milanm/aztree"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.6.1/aztree-osx-arm64"
      sha256 "ddd9def87ddea6f1d64da0a50232431750ee771652912aa15f2ad387806ace93"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.6.1/aztree-osx-x64"
      sha256 "03c508c393de185df33ef44203136e33d35b75126eef6d6741b7fdaa06af647f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.6.1/aztree-linux-arm64"
      sha256 "182bde0673e42456712129843c186ced43f510a50695c05895917b7b0ff8e4d7"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.6.1/aztree-linux-x64"
      sha256 "f3e6910eba2534daaa222426148976b31d643d4068a2346f30f47e7480e8054e"
    end
  end

  def install
    bin.install Dir["aztree-*"].first => "aztree"
  end

  test do
    assert_match "aztree #{version}", shell_output("#{bin}/aztree --version")
  end
end
