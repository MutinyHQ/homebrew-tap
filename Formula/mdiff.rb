class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.4/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "d713cbbcf6cb400c6b0f8834f290754dc54026d89edfab7fd4aad537e921963d"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.4/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "87fe3e59171f63ba0fe64ac84aaa0cc7459032fbc304fd603fee46f3c86f792c"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
