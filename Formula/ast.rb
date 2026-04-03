class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://github.com/erdembircan/ai-stupidity-tracker"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a6a7fb2916d694729e27f5f3bb560f6b8aebde2e0aaf540f66f3f40ce29b6ce8"
  license "MIT"
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
