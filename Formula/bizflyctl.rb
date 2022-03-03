lass Bizflyctl < Formula
  desc "Command Line for BizFly Cloud"
  homepage ""
  url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Darwin_x86_64.tar.gz"
  sha256 "25669a5481c20eb9a3492ea23fea970fa5cfb829894746abab8835219d0ae01a"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Darwin_x86_64.tar.gz"
      sha256 "25669a5481c20eb9a3492ea23fea970fa5cfb829894746abab8835219d0ae01a"

      def install
        bin.install "bizfly"
      end
    end
  end

end
