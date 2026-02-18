class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.3/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "2a638f733d3c5874b631ec8b44ae4f9dad91e46a2a2e899e096cb99cd0e88940"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.3/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "cd55ee1924b34a4da80e5c9b0c15976b8f533ce051917e3300ccba891ea407d9"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
