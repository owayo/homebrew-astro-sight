class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.100/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "00b5a87b3843501802b37f8199099b05ab5ed60e9b17d4e819ce76efac1bdca5"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.100/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "8070efa990a62664f14fc261aa1abd48e6165820f700f3a6674222892f18a8cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.100/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e708bc8b8646fb08e1f32e9383d257606f0dec3a89bba7957af1adc18a127894"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.100/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65979ce3cc2cc0928195743c9d86873babb70460f0e4ce23e87cc997513be986"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
