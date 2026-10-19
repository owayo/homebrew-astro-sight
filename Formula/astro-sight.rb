class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.114/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "ffc823f0f04091c5e7612fe131fde83e6c2f6fc8cf61a988ad4b36557a5eadfe"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.114/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "c08446dfb545a83fb0d1f23c2e0b743d459c6e93e58c665d0259618aa3a69f74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.114/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03cbc37e2324a9957f09aa6f1061df358f976c7051650046d6c58daf9880d4f9"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.114/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "124caa745c479b29561bddc767c3cbf4053f2fa041b03912dfa49b8a12526bcb"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
