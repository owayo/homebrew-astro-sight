class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.127/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "f3b055ead02fe453cd2fc887592fd2a9f57bd70d25a53dfd2526fc9df4834cef"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.127/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "61dd8ed4fcc97cb93385bb5d662ed18e8acc2748b925b83fd256af893bb515f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.127/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "665766460bd7f8fdbe69eb5827136a99ea040b7a843997cdd5267388249a0916"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.127/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3cd9fc376c63ba9dc63fa435489a3e30ce754cef472aad8aa5eb6345eb43a4a"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
