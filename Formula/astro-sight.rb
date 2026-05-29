class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.127.tar.gz"
  sha256 "1faa41addd59739eb2f7fefd912c8e2747b6d46e0b31c5b15066a2d4eb004f1e"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.127"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d8ee7259650558b72b6315815ac69decd70ebc11c424a28fe2fcdb6140a69455"
    sha256 cellar: :any_skip_relocation, sonoma: "1f4cdb91256137208faf86146a7587eb1966368ee0b1c315de7c4469e512dc64"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3f7f8ea28cf0d696b33ca1442fd08e9dfb77010cd3bce6215382feb3d8195270"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
