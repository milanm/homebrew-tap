# aztree's own release executables, one per platform. .github/workflows/update.yml moves this to each new release.
class Aztree < Formula
  desc "See where your Azure money goes, as a treemap in one offline HTML page"
  homepage "https://github.com/milanm/aztree"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.9.3/aztree-osx-arm64"
      sha256 "b3d796a70fa65e08366719e2948def3271ae5d9f95a119161cfbeee8a9b83436"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.9.3/aztree-osx-x64"
      sha256 "fe6341f42425edeab4e0f12f48d2e6b76517b97e7d51ba37f447953366ba4289"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.9.3/aztree-linux-arm64"
      sha256 "56aef77700dbe3bef8e72ef90f78ad21034d346f9bdf5d05cf66dc97cc37b9d0"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.9.3/aztree-linux-x64"
      sha256 "cceebc5c0030b08599c9a2caa0ae4d882acf99e789e51b7bf6d952338f2f2661"
    end
  end

  def install
    bin.install Dir["aztree-*"].first => "aztree"
  end

  test do
    assert_match "aztree #{version}", shell_output("#{bin}/aztree --version")
  end
end
