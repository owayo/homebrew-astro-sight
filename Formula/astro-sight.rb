class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.106/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "73fb4aee780430a41ecfcc0ae5a954dc6a9d600c536e27cc443409747d1f0f2f"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.106/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "fa9b002f64400452d3cecb0244de21bfedc3046701fc12599faeaad314ac7610"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.106/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc143f6fc2cb2fd793bd284aee85c55f2129946181db3fc5a32a0a917321fbc2"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.106/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7d73be44d040d0c26d5300e3fbf7ddef2b33e2905d150af62a126c3c3b87b0b"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
