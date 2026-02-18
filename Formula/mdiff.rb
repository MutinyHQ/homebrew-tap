class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.7/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "30d8dd50fa7088666e524246f1eb102404335853a5d3252052f7923f89c6f4bd"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.7/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "63cf3b62a5d5bbdce4599ad5d1abfdc64ebccb57d4902590c1dfee873cf676c5"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
