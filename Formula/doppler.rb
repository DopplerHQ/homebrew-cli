# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets"
  homepage "https://doppler.com"
  version "3.16.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.16.1/doppler_3.16.1_macOS_amd64.tar.gz"
    sha256 "01b7a1231dd4cd2143d6bbf591408cb3f0817e2f3fc236ad4b3b82402d9d35ca"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.16.1/doppler_3.16.1_linux_amd64.tar.gz"
      sha256 "90a9fa02d6f3f346d38e4213073055f9944cde0a85ef3d11032cb53ed62548e8"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.16.1/doppler_3.16.1_linux_arm64.tar.gz"
        sha256 "46569c2cdebb0a50acded598f899368d8c6d924ee96a0586d07d43ebaa6af7f4"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.16.1/doppler_3.16.1_linux_armv6.tar.gz"
        sha256 "9d0fd3ed67d3eb2d47162babc122e3bde8b5de4dfef3cb51024082e683ca2448"
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
