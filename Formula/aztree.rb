# aztree's own release executables, one per platform. .github/workflows/update.yml moves this to each new release.
class Aztree < Formula
  desc "See where your Azure money goes, as a treemap in one offline HTML page"
  homepage "https://github.com/milanm/aztree"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.7.0/aztree-osx-arm64"
      sha256 "56d10a414ad411faf17c54ac8a98217be4967a10743d976e8d53e115a176c1aa"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.7.0/aztree-osx-x64"
      sha256 "9f2adca6192ef4ebcfdf5604869de51532163db326526317d012f5dbca1ef20b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.7.0/aztree-linux-arm64"
      sha256 "56d82ce854d5ef591aa04e74221ca6d856e38887ea7d611e92bb27c9c282d95b"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.7.0/aztree-linux-x64"
      sha256 "4e5d1c8bf58b722159fa65c95a2117fc5c00f3e005406db9aba4a123eab37d7c"
    end
  end

  def install
    bin.install Dir["aztree-*"].first => "aztree"
  end

  test do
    assert_match "aztree #{version}", shell_output("#{bin}/aztree --version")
  end
end
