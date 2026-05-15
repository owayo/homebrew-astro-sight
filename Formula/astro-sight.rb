class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.120.tar.gz"
  sha256 "bc4421f217280143053e888f900121f04b87143f680f15dc835f3b3c3f7cfd70"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.120"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a2180965eb3724cd4fad2f576fb703fe6b1486dae743b988c15ddfc06cf54520"
    sha256 cellar: :any_skip_relocation, sonoma: "4342ead224208369eb42083125679eafb2b6aee3df6ab6c566db60b7dc16ab01"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "840b580590915b82c33f702fe25fa9755d80ec48b60e6f69da6f8dc0c87369f6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
