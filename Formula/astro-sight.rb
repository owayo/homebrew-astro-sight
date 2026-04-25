class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.121.tar.gz"
  sha256 "31274a7bb15d399b584a5f84c3e430e3591be1b58a3dfa94726c091ece6ddba0"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.121"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a68d44bd79f9428733172cb666bae01893644b7cec1e5c74374863c52f5ca7ce"
    sha256 cellar: :any_skip_relocation, sonoma: "b93b3a7af68b33d9affb85e29c7991ba46cf5d182077dbd6dcaf9a1e7b1eac46"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3e5acd0190e9c6c1f1dc078d8f3ae1965bd55cd79a47c3464ec03abbab1581f3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
