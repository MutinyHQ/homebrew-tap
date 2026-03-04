class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.11/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "497f1e8eeba67f213e402c2eabe094d639252821f3eae23f0ee66e5de3d2fbde"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.11/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "cf6e57c73a9d74d32320fab83164d84727d799077c6d4463ae3acd69b71da65b"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
