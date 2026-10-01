# aztree's own release executables, one per platform. .github/workflows/update.yml moves this to each new release.
class Aztree < Formula
  desc "See where your Azure money goes, as a treemap in one offline HTML page"
  homepage "https://github.com/milanm/aztree"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.8.3/aztree-osx-arm64"
      sha256 "5732c5ac03ddc622029c88911df4d38b0cc3143757d88e00042083469f78979b"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.8.3/aztree-osx-x64"
      sha256 "8d5f6e0c5d69bb9a6d0f7fd7c89a70cc0d97d91ef7f165195925627f14b8cc10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/milanm/aztree/releases/download/v0.8.3/aztree-linux-arm64"
      sha256 "ac5040512d06da2a93789157468899e41f43ac969f80bccd480d3ee3044d1d9b"
    end
    on_intel do
      url "https://github.com/milanm/aztree/releases/download/v0.8.3/aztree-linux-x64"
      sha256 "cc07adf0590311b2bdb35a150a0db4e1d53800ea6932838caae53bc91e8c820b"
    end
  end

  def install
    bin.install Dir["aztree-*"].first => "aztree"
  end

  test do
    assert_match "aztree #{version}", shell_output("#{bin}/aztree --version")
  end
end
