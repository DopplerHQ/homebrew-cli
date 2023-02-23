# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets"
  homepage "https://doppler.com"
  version "3.55.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.55.0/doppler_3.55.0_macOS_amd64.tar.gz"
      sha256 "2711ae93020edfc95f78018690c5d4a0bea9db92bb6f19514f0f961d3473ffc8"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DopplerHQ/cli/releases/download/3.55.0/doppler_3.55.0_macOS_arm64.tar.gz"
      sha256 "752a1d294656c49a785acbedba04893e5134ff48d765f75688f776d1b9ba2e38"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/DopplerHQ/cli/releases/download/3.55.0/doppler_3.55.0_linux_armv6.tar.gz"
      sha256 "02ddd605f0ba2a1d72069cc1e2190d02af20f3714540efe04e8100b73860178d"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.55.0/doppler_3.55.0_linux_amd64.tar.gz"
      sha256 "db11276c129979de9205358090d133d175b46683f0363c72dfa0f0b6e304f615"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DopplerHQ/cli/releases/download/3.55.0/doppler_3.55.0_linux_arm64.tar.gz"
      sha256 "0c7d91884c00612c7d2ee3e5fb37e2c752f8fa2c281d267ee68ee03f97ea8db6"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
  end

  test do
    system "#{bin}/doppler --version"
  end
end
