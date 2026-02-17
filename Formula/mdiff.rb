class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.1/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "f16908cb9a2f5ea4855850a26faef7c02af15a8a597da4f8acad8c2c6a95d04f"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.1/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "83c35fb458836c74a864e1f04d3ffaa9ef84389b6a7ca5b3b06c7170ee74e0d2"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
