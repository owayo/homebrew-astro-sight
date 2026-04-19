class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.112.tar.gz"
  sha256 "4681154e4a9ef7a17d297349e4b38b16391c1d8d550977eec76039e62e932622"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.112"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1203e17e6dd0f8ef5f33b63f1dc7e31846ad3e0f91ad14972d49145143b3bf36"
    sha256 cellar: :any_skip_relocation, sonoma: "a07297556b3ab13298d6273d63a272c4025984216f1c4d5953bcc18e92e06fa6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "69d5fb79a597b9b7b36b4ec0f5284ac44b4ef755b89d8aa48130546f4d2d6d98"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
