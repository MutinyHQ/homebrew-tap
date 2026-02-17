class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "03da77ed83957e7670ee09c40ce1175c0bfb4ce920d9128d988a76adf67c1023"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.0/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "3aa3029196de1359845dad0185ddd1cd2ff2e924b410fbc1cde88a2ac8737098"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
