# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bizflyctl < Formula
  desc " Command Line for Bizfly Cloud."
  homepage "https://github.com/bizflycloud/bizflyctl"
  version "0.2.5"

  on_macos do
    url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.5/bizflyctl_Darwin_all.tar.gz"
    sha256 "8ebfec645cf9457db85a2cbc17070347c5116015695752de6859656e713bd109"

    def install
      bin.install "bizfly"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.5/bizflyctl_Linux_armv6.tar.gz"
      sha256 "5e2b40cdd2fabb07c1055922fdbdd48265b33678f20a6fd941a31fafeec6269d"

      def install
        bin.install "bizfly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.5/bizflyctl_Linux_x86_64.tar.gz"
      sha256 "4af1f6e047007ed39aa043bb282fedc116b7bcc858088fa842f80f3bbadc6beb"

      def install
        bin.install "bizfly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.5/bizflyctl_Linux_arm64.tar.gz"
      sha256 "9801db15f22d10dda7e8bbaa5fcb6686f7ae1ec341b0ba8ad9abd2f7ee6acc76"

      def install
        bin.install "bizfly"
      end
    end
  end
end
