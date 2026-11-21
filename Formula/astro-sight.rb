class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.110/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "529851655d75c75633baa339c80388868cd4f3b942e14b7469b171ebe6fa6032"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.110/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "e8b613adc44039a4e4870b46db36c7b1945a0f5ac1d469f7888bbffdbd656494"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.110/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29f7f4e6a574ed530b71d31fa7c22f0c17f1d9cf4450d7ee171db6279cf34c7b"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.110/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ba1cfee7c1856547c9ff3c99a217460e6c9a9b02adacc9d3b309f4197d51c89"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
