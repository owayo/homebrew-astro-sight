class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.109/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "436e692538df489ea447e4a2af38d23856d423e35e88418874847d541bd629a3"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.109/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "75d8215f43ff57b5dd7dfd999e4b9318e7e462bcf6c75281feed0d35617b6f8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.109/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35e55b72533992db082e31dbd84d699825c4e53b20c63d3e5265d30f05866ba3"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.109/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "441d78edbe60ed42c3dc1bdaad07ca5769de210e9d06ff792958d3ca20b87645"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
