class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v#{version}/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v#{version}/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("#{bin}/mdiff --help")
  end
end
