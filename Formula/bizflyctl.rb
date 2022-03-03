class Bizflyctl < Formula
  desc "Command Line for BizFly Cloud"
  homepage ""
  url "https://github.com/bizflycloud/bizflyctl/releases/download/v0.2.2/bizflyctl.tar"
  sha256 "9b8ad8b7026e27038450c3dc0fb571c8b86e99c677c65fbf34313cf95cfff21a"
  license "Apache-2.0"

  def install
    bin.install "bizfly"
  end


  test do
    system "false"
  end
end
