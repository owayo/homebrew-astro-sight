class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.105/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "826f8060b543be4c6879e21beaf736d3b88d3a0b9b519aa9ad77eaaf44d7e2ad"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.105/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "a0a1dfd12b6577b6f281336a61b5bac7adcb6380ca9c94121e21cda4d189b084"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.105/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d33c4007550860a07e1f6c7dc17cb3cad443797323902da72a797aaed20c06f8"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.105/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c4d065a85bf6b64ec05164f394e841eb3d46da669be93353573e79df46d7ed8"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
