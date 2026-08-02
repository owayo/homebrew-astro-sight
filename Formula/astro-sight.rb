class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.100.tar.gz"
  sha256 "7bd4ecb7f5d232ca3974609684bd3285ac1b2a75c3725168373a253102829675"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f935fdd0a57b93fa060f2a182c7d6d75d762931227f819ccf1a2d1ae15ba3399"
    sha256 cellar: :any_skip_relocation, sonoma: "444c467de10feb16bb4077b05928be153cdae9006f67392993574b3b4187d6dd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "518ffbbbd453ad8b36ea41a311e777907cc39967ca1d8cbe8270d34356301caf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
