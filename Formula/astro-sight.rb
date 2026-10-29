class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.125/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "f749115e0c1869a8f8943387061dc0686c15e2f0ababc9fdab8ccff85cbfe4e5"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.125/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "7e0d1e57092a471fbdeb615c2c64f7e907093299cd137382f49003d637268c0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.125/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "730e167fe398660b57fb51d352de84cfdc4e076448f4ddf1ca7143c337cfecf0"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.125/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23dd057fb38e19b38089725782695e72721734c079d0b8c2fc41c2ce00881202"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
