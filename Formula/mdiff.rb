class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.14/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "fe74146529f437465b225cd9b4c30bdcb9e17e2574393988614719a79f6c1edc"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.14/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "e5d459b91599daa56545db61c9ed2559615c7fca15ffc07ddd01fae07d4846aa"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
