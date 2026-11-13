class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.105/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "99b49f8cfbd0958ff2ac063a77b4b0f9a48c15befc019489c089df014632d6ad"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.105/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "1d1360c2512a917a1d1468ef9014ea0bc3a61d987a1b635661d64a4a9ce1fd2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.105/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "611dd5859061e929ade23766733d1fec257275c97098e4349408d872551668b3"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.105/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "598a9976521ab2ed9653dc11979a395870e88f9e5463edab962886bc2181a801"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
