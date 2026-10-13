class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.110/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "aadcc57bb22dbd35432872b39d1c99a54a07573173699b9b1af09d122d70a0e7"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.110/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "369ab4217eea511eb8eb91437012df3e354546fb6c8c66e8bc6ad74d627eb5ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.110/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4e5333395736d29b7fcee7f5c085a43bdfa26390ac0c84751742328123b5d72"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.110/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "539d1fbe22cc0f63273f1acf2954cfaab0f4b4e48ba93d50037713c35fb15705"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
