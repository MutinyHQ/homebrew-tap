class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.18/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "954b2aa9eff1764bf7c2c0f6fd6c306491191bb2779780f9272bf05b9435062b"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.18/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "44a7ddc71d2022c03a3976c22c5a687e2d748e986a904dff368a4c1c62a02c7e"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
