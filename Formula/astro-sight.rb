class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.101.tar.gz"
  sha256 "9282f7714a9192c545d620c3edf513ffe2ae2b42a1a3d4c337359b60afe92168"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4bcbb4f517c634b6a355e1b672a4eec4be332cd29db7754818f825fb69fe5738"
    sha256 cellar: :any_skip_relocation, sonoma: "ba7209eeef0ebedb43cf4377e3e487d116edd6f5d7a8d5e50befdb2c1ac611b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "43e7e64e75c31e3a6afdc3124c26351383967a6435b23c9b0d0074275e94cc98"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
