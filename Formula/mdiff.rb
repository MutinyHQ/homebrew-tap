class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.5/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "b9d2e53a90df87b1a5cde618d7f7acaaa9ea27f21c25846774509996b3b78b8b"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.5/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "3b78aa35556741ac596ae38c18eba6a12879ba593b1e68a5deb59e9128e08d43"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
