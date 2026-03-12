class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.17/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "2944f9dd1d1b76c3a04e548a3a677ab28b9697db249022589e1eae7840a642a3"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.17/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "6619c495bba4845b9f7a955c726322843c1c796cb6bc085aac09274af51c2778"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
