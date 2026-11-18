class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.108/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "f03e40338b1db5bcbc60ee518af41ce98f26cbe48d5830da6a5329abad99c2e1"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.108/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "51ee5e3f4a199a7dfdade0610637657f9f363cecaad567d4200655eef79daab6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.108/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4bee2c2eb39240e9ccad94d438ae415c055ee1670e7983d01112c86ffd93850b"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.108/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e371d70c2957546114c8092b9979149eb447a04eb50d4f9b5775d34469326c4"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
