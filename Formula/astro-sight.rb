class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.106/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "98aa1ba47498cff423579f1d3ba28af9a254422ee644e14a787834d707c8d946"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.106/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "8e5755885bfd408b139a5be8ff8cc6341902d9388975ca32020b9e6a629c6781"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.106/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7922c5dba6c055bca24483690d8a1a00258dca0cb2186350cc66d76f17f2f53c"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.106/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65da1f0a16a3c24f0eea2f18917196ce5bd3bedc6fddab458bc6c0fa9ce5ca08"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
