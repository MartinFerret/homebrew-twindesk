class Twindesk < Formula
  desc "Run several Claude Desktop accounts side by side"
  homepage "https://github.com/MartinFerret/twindesk"
  url "https://github.com/MartinFerret/twindesk/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bc2784734f8fa67c89089fd5cbd2c2ee98765f80df2b185fb84cad929b7d7943"
  license "MIT"

  depends_on :macos

  def install
    bin.install "twindesk"
  end

  test do
    assert_match "twindesk #{version}", shell_output("#{bin}/twindesk --version")
    assert_match "Not affiliated with Anthropic", shell_output("#{bin}/twindesk help")
  end
end
