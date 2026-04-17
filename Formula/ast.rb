class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://erdembircan.github.io/ai-stupidity-tracker/"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "4d56a76fbacd7c0bc868bad3e00a6da815b5c799cd2af1a75b103ca59216370a"
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
