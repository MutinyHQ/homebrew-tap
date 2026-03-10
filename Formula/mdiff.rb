class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.15/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "b068a56b681ba43a616575778c875ca18924b894fada751859572ede74a6b76f"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.15/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "223b573950ce255d2ccd80db9ff6e3b992d63030abc78c2452e76d3e03f24029"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
