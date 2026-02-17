class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "d10dacdcd82fe743be84a63f0b1255e57961c475758c07b942d03a6252af5519"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "7e09736b216ea523e4d8000b58b2b77d39d5aeac7b3cd6e5d4dbc51d78dfb756"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
