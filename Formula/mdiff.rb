class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.9/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "c7c09a07a5eaf7ce138545d432594d9ecb7abac06c92d08d9f8911cabbba31a6"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.9/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "15211afa4f1c2959dcc0dfeb6cb760385fcb07a1d8e53b21b698839268208ad4"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
