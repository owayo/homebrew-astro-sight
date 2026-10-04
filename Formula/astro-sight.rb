class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.103/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "7f99bb763571ea4e779d789d35d5de85d393f531e0f54ffed8ea3aac12edc16d"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.103/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "268fb1c7d3de9b62ad79e41cda1dae920f09a49479d712afda1db362df87f566"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.103/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "744f5997526e15cfda4610b67e181c425416b906fcec238f00352c5fedc193ce"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.103/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d471cd3d061535bbbf14b4b14769344cd266eb3cba33bb20ab5ca1c26c7fe3f8"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
