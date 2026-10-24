class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.120/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "a91866d6d3e70ce2e268f913212053f7618950fefcda5deb7a160d8c7e11fe8f"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.120/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "9ca39e84073e0cf721b13decfc0c1b9658eb914ea95d3ce7bb07e4c6c720010a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.120/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "457a56085a980ee1f775afa24e030b81670cead109b00bcac90df9ae768a372d"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.120/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "479104835d748270dbd9ed35c1d063fbc944c0053016c826215be32729cd3cc2"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
