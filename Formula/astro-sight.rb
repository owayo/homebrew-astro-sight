class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.111/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "23746c8cd82d6f34475c050b3411af1b95aa3225282549fefdf32faad20e14ee"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.111/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "4a4e6771505e6860698c40fcba61e800622869d6e0dd3a088a6d993a280db32d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.111/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e90115d78fc4741ec1da40d1c432d08f34e1981fa9b961c0c4460aa0b55220f3"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.111/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d351e18975eb625dc2d3b9f8fe0aa9b7b757f2a86b50ded17b5e027be95928b9"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
