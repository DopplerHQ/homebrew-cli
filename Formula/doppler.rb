# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "0.5.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/v0.5.2/doppler_0.5.2_macOS_x86_64.tar.gz"
    sha256 "ff40d4ea71457c19ef892c41c0b8cc1bae3c7ea40d4d625a477e9b1429e70e93"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/v0.5.2/doppler_0.5.2_linux_x86_64.tar.gz"
      sha256 "28fae9e091770e3d00c14d20780f9c54065cc485a1565cb57bd2d3c4f0e00f2c"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/v0.5.2/doppler_0.5.2_linux_arm64.tar.gz"
        sha256 "7d24a119617f27625c2c6c3fd737f55849a65a733c58b7b42dbd71f9b4dd140c"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/v0.5.2/doppler_0.5.2_linux_armv6.tar.gz"
        sha256 "62582adde1df04121c25ef72f498ce190e1b5007042893da6324c749a80fd86d"
      end
    end
  end

  def install
    bin.install "doppler"
  end

  test do
    system "#{bin}/doppler --version"
  end
end
