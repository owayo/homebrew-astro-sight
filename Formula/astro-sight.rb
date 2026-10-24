class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.119/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "a7d564eeef2593d8f9f1e2500d5c5708c639d3cadb203fdbbb10d68bb0fbf4a7"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.119/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "9ce1265a8501f9ad29d0c4a2bbfa9d9c81e71122be4f5e5a5ffaff3e013f4962"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.119/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af6ac77fcef92cf4fb06819e228bd86f3caa292d4796c405e3a7e5390f881e58"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.119/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48f9b0fdd8510a709d21bc52750895eb621a540a56e9da3c36f903a607761e05"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
