class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.9.101.tar.gz"
  sha256 "facfc749fb06e0ff7b0702911c66fb60b0f050b99c8550ca0a16d7da9a674600"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.9.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c518e7b76f2b0d9c9cbd49a29baa959e77f007196ad589f820b2753c24c4d0a5"
    sha256 cellar: :any_skip_relocation, sonoma: "4a73643539f09f21ebd078d8dcb2efbe435113ed30171d821605fe700d917333"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aa81921580083ec7984927340aae05efbfbff0904ca494aa747627ff2d9327d0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
