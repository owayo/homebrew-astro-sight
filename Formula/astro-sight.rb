class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.122/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "3bd3097cf10ab7975977741a399b7b33551c9767a9335c59e2f292b2cb5dec30"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.122/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "fe99d51b5b7e75720ada64f37936479d84f361ecc4f7ca0ae761ea06ed99d15a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.122/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3392cc8ff4b291e7d83c65c1f0a2e04ab95b71ebed78926aea2a97f430a03d58"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.122/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a2c5f5ee808e38587c5027ef8b422cca6fe25972d5f19183a7d0873fc3ed16f"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
