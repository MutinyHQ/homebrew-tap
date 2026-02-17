class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "b8e29739e1997d8ed3e9784c5f048691c8c4cf4e744acf886da762cc1d5ac299"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "a0f69440ae30f43a0ed9870b9c3fe3208290dced08d48e441983c32747c50445"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
