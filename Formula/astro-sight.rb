class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.105/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "3c7966b93cef50bed587107edcb56453d52fbeff49ebfa568637d6530d3678e7"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.105/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "ff69dace7d2d19ac320e3140b14672a6d98b658c0079f3c795d7a55ab56dd7d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.105/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afe61eec668be8b1302b4779185738cbc23c31dc5a92cbef3ce1a9076f798f72"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.105/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8cabfb31b5766c030e578045d817eee5c170c99fcb9ef99b30bd80ff7d41aa3"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
