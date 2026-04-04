class Ast < Formula
  desc "CLI tool that tracks AI model performance (Claude, OpenAI)"
  homepage "https://erdembircan.github.io/ai-stupidity-tracker/"
  url "https://github.com/erdembircan/ai-stupidity-tracker/archive/refs/tags/v1.0.9.tar.gz"
  sha256 "da465427ecea1c9b637f39dd82befe0895533179a73c40a464682072908a9ccb"
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
