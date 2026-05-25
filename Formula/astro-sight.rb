class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.124.tar.gz"
  sha256 "83928ed1b616b9f4dc1ac7ad390f9ae13a918647a4ff6a490d721291c546f49d"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.124"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8f0ebbc1ea5aa2385e4bf9e4c8f4d2d9fa476eb4174eed3e0e5756aa2f01e879"
    sha256 cellar: :any_skip_relocation, sonoma: "8b3b3b40ff02800fde1fb50e6c0d542a4d6f1c7272e95200efe84bd90ac096a1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "52ef54890a75c28cbdd79c361aace6f27456f897aae3cc0c9ce3be462ab118fa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
