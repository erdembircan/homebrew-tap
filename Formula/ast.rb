class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://erdembircan.github.io/ai-stupidity-tracker/"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "0e0f6ca53f38d2c2b57b040162b929eb796fe4fbce6067ca1852fadd3b75ef65"
  license "Apache-2.0"
  head "https://github.com/erdembircan/ai-stupidity-tracker.git", branch: "master"

  depends_on "jq"

  def install
    bin.install "ast"
    bin.install "ast-hook"
  end

  test do
    assert_match "AST", shell_output("#{bin}/ast --help")
  end
end
