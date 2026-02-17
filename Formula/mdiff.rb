class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "93744dd113ff3cbd5e0c33554fe01c58fe040be74ab1c81fcacd798543ae5500"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "34c60eb1cc6fc56c0c36249b9f53812aa8df45667c3e00e3b39d80f0f184acc2"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
