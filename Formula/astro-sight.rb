class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.104/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "79c40bec868c9e1bc7aa74f9687d206c0d8e4bb5914f9ab70c62bb6f66341966"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.104/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "6557bf69da387cca615d8ce17846fe91ef3936458cbda5f9267af92a5ec56314"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.104/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b54f60192327edec3a19ec1672e4318b52433aa4cb2f03f9ef6776e91c6fb9a5"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.104/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30c8063a8794ebb01be336d39f3ccc1d50cf5c39871271d5ce53f2d67fd6f531"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
