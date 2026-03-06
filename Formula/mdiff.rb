class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.13/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "bc8d5c0a88df7286570469bf7b3cf34f02c709f7c3677007cec6ecf53ec09f03"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.13/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "424ef30b60ca043db3ec8ac22a70a1e91ecd42bc40cfe17d679386e379a010ae"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
