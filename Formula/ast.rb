class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://github.com/erdembircan/ai-stupidity-tracker"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
