class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.112/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "90a030df9c49b292528dc03f9cc12d34c5039a2cd9b0aeb5d9b1f60a787227d5"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.112/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "d762c31d62376c577b9dd520de95b08636195a17f696538da54f7941a372343d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.112/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ff080d93c217032c1234a96d1f87ca13ffe50438267740b6c137251bde047e2"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.112/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "285fbf85538351df8061b33059706b1e1fe65769f07a82a64397d565ca64f346"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
