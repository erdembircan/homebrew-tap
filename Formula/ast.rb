class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://github.com/erdembircan/ai-stupidity-tracker"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b7654111dd9cc6164177da1901918c1eeab8c4ffddf4e46055fe91bb80aaa507"
  license "MIT"
  head "https://github.com/erdembircan/ai-stupidity-tracker.git", branch: "master"

  depends_on "jq"

  def install
    bin.install "ast"
  end

  test do
    assert_match "AST", shell_output("#{bin}/ast --help")
  end
end
