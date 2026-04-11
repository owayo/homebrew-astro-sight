class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.105.tar.gz"
  sha256 "61b91f8295dcdd9772857d6d6303158486c9312749ca56234a0c535e4cc0c528"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cd4592e6486cb28452bac4b3aa90b7d723d8947a43c6b771068c4b8ba9c5cc40"
    sha256 cellar: :any_skip_relocation, sonoma: "8c31cdf87cbe43227ab8592df3ea41a599ac9fd8c82b76c798b17a9577c15a38"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "22405b9fce42379608c1225bdf964a0247faad59d5d74597382fad0c0e1db310"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
