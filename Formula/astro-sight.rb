class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.102/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "c6ed44afc3fc2477f3c5f1dea7b2a2f016873645fa3ad97e22f1330a3b3bfb98"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.102/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "2b6eb20cd577f846233f0db1e9db44ce4f43f218dec434ba032fd1c7b219c8d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.102/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a16de9141d7d791679829f8d2f6319da215d39992cd5dc5db3b4fef60a877569"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.102/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3759ddd0b81c532c1fdc8568016db00339c322cb372804a878eb2d12132a9ecc"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
