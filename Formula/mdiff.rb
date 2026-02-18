class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.6/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "910ed71705aa3034c1efbc1481c33ebed5634282db04e002c9298301bbd138b1"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.6/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "602f1157eee468267d6b545f34327f855e1d9275e92828301e3125209ff9bb37"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
