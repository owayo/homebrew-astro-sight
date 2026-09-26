class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.104/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "571c527c83db631fd003b36223a1705cf78b79f9b1af029b3c66ea86856e3cba"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.104/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "0061f40ecf088be64ef2bb1fd3ac7ab713dde125532740e428a5751466326fcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.104/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23eb96c91ec467e3741232b0ee457fe0ace708350c244ad0380f0fc5a41a477e"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.9.104/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10a08250698e9c66607118874bee12a21f61af410506bbfc5c0803a321da1e56"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
