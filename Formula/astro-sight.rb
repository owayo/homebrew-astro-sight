class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.100.tar.gz"
  sha256 "85497ac034aa643d7c2d2cdcb1ec138f61afbecd049cc2025548d2a0e92b9658"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a5cbdf5f30957bf5291c3fbbfd7f3dceeb832a27c93f1d529045011979a59e58"
    sha256 cellar: :any_skip_relocation, sonoma: "fac2798d49e37c4e3f0216c52a90e166a22395fc0803b10694bda5944272dc6a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5a3622fb5ff06612d482c1e64f0d8ef695c0396176f68088452d0d13853853b6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
