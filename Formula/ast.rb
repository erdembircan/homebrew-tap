class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://erdembircan.github.io/ai-stupidity-tracker/"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "a5d40c08292b93b68aa63b9f01e7291f0543c870182213acf482017e20436f26"
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
