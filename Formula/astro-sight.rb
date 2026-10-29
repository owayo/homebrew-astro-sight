class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.124/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "f5d1365a8d390fdcad3e104da4f476f1b4f1f3ba887a4c71224557f083d3c198"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.124/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "d663c00d18c8292df941286c261de663d43c9438870630370c7b24832bc68ba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.124/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "758dde433180734769ce7c7db79ac1f6dda329a9375ae1f7ee06827ec66b092e"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.124/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3beca4ac3333384bd33fce0ace4a04b154c4a673b6fc44aad2e6a54f1a462f92"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
