# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.6.2"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.2/actionlint_1.6.2_darwin_amd64.tar.gz"
      sha256 "bd5f926a06c464c9b6d96954d3cb8cc4e51a05ad7a64aeddf5b6ea740989031e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.2/actionlint_1.6.2_darwin_arm64.tar.gz"
      sha256 "7373678d9930f96ab016f325fdbadbf7ca5ead9b9619c223f2e8f0aa0b854bcd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.2/actionlint_1.6.2_linux_amd64.tar.gz"
      sha256 "6b27de7416d28507f1572f715f57acfaf5c68f2d84ea0f3a70a5f5f25cae68e0"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.2/actionlint_1.6.2_linux_armv6.tar.gz"
      sha256 "2fca542c165f07f4770823019c25b5fe0d73c6dec776e28fa67484127ee748af"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.2/actionlint_1.6.2_linux_arm64.tar.gz"
      sha256 "db221461c7560ec8f529a1ed9f5b795b966862d6d531d99beac3249bcfc5b649"
    end
  end

  def install
    bin.install "actionlint"
    man1.install "man/actionlint.1"
  end

  test do
    system "#{bin}/actionlint -version"
  end
end
