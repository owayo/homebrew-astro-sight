class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.110.tar.gz"
  sha256 "36f235dfa91347713d46b88dc7e20d87f4eba858dd757c9740e0f032355b98dd"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.110"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "91d628de9339801fab516cccc4ce99963575863ad132b97162764a50faeed55a"
    sha256 cellar: :any_skip_relocation, sonoma: "8dcfc1d35631f65b1d81da7ee44d31ac4a85379cc45f3b0c4676317a57f28788"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ecd7a0077787ba1fd52234d30039a93c2c14aca6764de15008f251a9e73f01bb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
