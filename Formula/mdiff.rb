class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.19/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "60525fdd734bc738de991773d1d9c102076a6b89b8abd34c0e8008eb6191e730"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.19/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "12c8ce3f4e4b6af0117ce7849cfffb713cc29739d882b8cf01dced763622f34e"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
