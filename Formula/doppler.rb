# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "0.0.28"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/v0.0.28/cli_0.0.28_macOS_x86_64.tar.gz"
    sha256 "d86050cdcd075c2eae04a72f7e0bb2c3600b74deab40552b085555456e08db85"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/v0.0.28/cli_0.0.28_linux_x86_64.tar.gz"
      sha256 "c1fd7a9f3c72b2349275121a7d58810b8e45770a88c555ef21d5c6c432fa501e"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/v0.0.28/cli_0.0.28_linux_arm64.tar.gz"
        sha256 "f2d8001f2e020a4a387daabbce34f171130242fbbea3cf23ffd540ec9f9f5dce"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/v0.0.28/cli_0.0.28_linux_armv6.tar.gz"
        sha256 "9f7f9e1f9632f8cfbdfbc492abf60e8eb132edbd37d890ee4303fd4fea195099"
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
