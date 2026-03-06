class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.12/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "f879525753c3c763009236d2143518ea9e528fe8b7a1c79b3b7877d89c348105"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.12/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "18e921b25f527cd3ccb789650d03acd5a6a3345deef255e8186cce2829091236"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
