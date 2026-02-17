class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v#{version}/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "c26016d28844097f7fece4deb273c4746e5e9f3ee8032557a65552760f2fbb6e"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v#{version}/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "4a1e934fece430cec643dcef922e870573300a0babb6ebe24d35e188a7bbe9a2"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("#{bin}/mdiff --help")
  end
end
