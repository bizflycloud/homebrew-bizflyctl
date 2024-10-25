# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bizflyctl < Formula
  desc " Command Line for Bizfly Cloud."
  homepage "https://github.com/bizflycloud/bizflyctl"
  version "0.2.19"

  on_macos do
    url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.19/bizflyctl_Darwin_all.tar.gz"
    sha256 "92d32ebb43f8f66e31e63a000a2be8e1069aa1f64ac2d53f838fa4d170321bc8"

    def install
      bin.install "bizfly"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.19/bizflyctl_Linux_x86_64.tar.gz"
        sha256 "262355a2375f0a0b2b98a529bb0706e193f098b42cf684c080b668e44a7823d9"

        def install
          bin.install "bizfly"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.19/bizflyctl_Linux_armv6.tar.gz"
        sha256 "bb8be6939e23678829b859b8bd9791481089be424e759dab789d189cc13f26ce"

        def install
          bin.install "bizfly"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.19/bizflyctl_Linux_arm64.tar.gz"
        sha256 "7909d3e1f6cbef304ae153349bb7a6eee5d8a2f19314a4f2eb5671c89e7abd03"

        def install
          bin.install "bizfly"
        end
      end
    end
  end
end
