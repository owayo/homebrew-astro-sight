class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.118/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "058a72a1181177e7d3c7ff8c52d6e609a0c61c7bfead5b8d3f217654bac19e36"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.118/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "b9480740c7341950a7a6a7974e183e68cf24c33743440f9cff9e124b619d1cfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.118/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bad6f47ac86e8371e5ac2964aa20497e02b30315edd1513cecec84d0e3c6a913"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.118/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dec4c06a68af60f7243fd9fe6e56ad1758eab18e267a131292f4037d0c9000d7"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
