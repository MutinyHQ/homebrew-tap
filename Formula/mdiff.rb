class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.16/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "acdd18ad0ea3c282f190c417d1b4e419062f5496b88cf94d848c309bdbaf257b"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v0.1.16/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "6071ccc97b06d4aff486a5b9b83db0f4fcd2fe5fe716297d53a494c9131a6c88"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("\#{bin}/mdiff --help")
  end
end
