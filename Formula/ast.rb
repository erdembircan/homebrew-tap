class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://erdembircan.github.io/ai-stupidity-tracker/"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "f4cf8072d6169ff9ebd0267e4496cbda348ad358807b58b7246664b5f120bc10"
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
