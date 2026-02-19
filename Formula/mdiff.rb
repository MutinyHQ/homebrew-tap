class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.8/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "e0d43f095906139ed1840c22e2ffdd390e01fbf4368e27ae5f9b24d48631e4d8"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.8/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "42ae28b2e383819cd4c4bd52730c92445e75418d47f33aee7a63de8432f4bf96"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
