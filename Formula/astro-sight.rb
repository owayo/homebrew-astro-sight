class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.107/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "9e3a6844ef56035996480e8bf186fae9dbd86cfdd8df213f43370363bb0e7148"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.107/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "b69cabc9e80d4d551a089aeeeaf69191e6f366c1a620e2e3109185fc5ad0e2e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.107/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e28efa05a4763766daf6aaffe068203437fefd8aad5d39cb9fef6e1104a24ad"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.107/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2aeb05e6299c85a2e30b946913b7ea7560ff90c84977cf372aa8fb6e58b7f4f5"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
