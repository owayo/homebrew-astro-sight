class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.105.tar.gz"
  sha256 "4cc61a68b46794b0a983df63449f30b2e982f19585fbae82ec4998a516b8e4ca"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f621d00d85f3840836559de54b66237649cff9c51a992dbc64a396df597c7697"
    sha256 cellar: :any_skip_relocation, sonoma: "8b7076ef5137514033f4df5469bdfd1848ec2ad3bbeab1c23e9be1c379a8599a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c2227ca7590ef49dca4e6a375b6587a0309d7493b2f554832035b4dc4d0ff9c7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
