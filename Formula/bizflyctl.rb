lass Bizflyctl < Formula
  desc "Command Line for BizFly Cloud"
  homepage ""
  url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Darwin_x86_64.tar.gz"
  sha256 "25669a5481c20eb9a3492ea23fea970fa5cfb829894746abab8835219d0ae01a"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install "bizfly"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test bizflyctl`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
