class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.10/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "34066432133113dc3d94cc9a0da36662570f76d15293f1f9aec4890b0d7ac1fe"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.10/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "aa0e4aaa1b47424926b1252e34557a594fcfb009f16aa682a65e278766a08ae8"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
