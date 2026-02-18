class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.2/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "4f8f4792d5e212af0cde6aa77d220b6eb16a9dbb980d3ccc5c5395ae85c2ac7d"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.2/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "e5cb96eacdc080441f8f0face240b57df4d5a3a7a12db1c3f7fe09f379f3b4fd"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
