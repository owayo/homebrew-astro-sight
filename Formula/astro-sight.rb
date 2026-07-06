class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.101.tar.gz"
  sha256 "c5691f4ff3452fe05edf777e964cd4fe380a9eae9a10932993517dc2e90aedac"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "559c15f47c18637bccc74be0c820cbd0ab76ccc3ef92021e635f83280dd75273"
    sha256 cellar: :any_skip_relocation, sonoma: "b6d4fcb1c481645cf12b0daa39f5fdb0e573112fe72760ec969a69340b7755eb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7cad7d9527a05eea3d877589fbb46f712956227f55852694d585c87caaf9b553"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
