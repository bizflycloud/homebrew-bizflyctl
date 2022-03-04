class Bizflyctl < Formula
  desc " Command Line for Bizfly Cloud."
  homepage "https://github.com/bizflycloud/bizflyctl"
  version "0.2.2"

  on_macos do
    url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Darwin_x86_64.tar.gz"
    sha256 "25669a5481c20eb9a3492ea23fea970fa5cfb829894746abab8835219d0ae01a"

    def install
      bin.install "bizfly"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Linux_armv6.tar.gz"
      sha256 "769c37be02a67303e87c26ccc24f924a39b5ff9410c25f4865e5e1bceba42d3a"

      def install
        bin.install "bizfly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Linux_x86_64.tar.gz"
      sha256 "2a59513e4e45aa6fd8547983810494306470170eeae8f9980a036e5c7e9c92f0"

      def install
        bin.install "bizfly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl_Linux_arm64.tar.gz"
      sha256 "bb596881d19f5303d9a588fc0afe3c5a722353dd6b8da26ba1de0bd6d895d96d"

      def install
        bin.install "bizfly"
      end
    end
  end
end