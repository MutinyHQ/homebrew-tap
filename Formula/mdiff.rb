class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "d9d25ddf5838c7d453753d2450bbca2afb19dda0ba191076a56f90844528f95a"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "775a7111b3c8feb3cff392d45240a10db960025a3a9988edfa5f44480517ebba"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
