# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Proton < Formula
  desc "cli protobuf to json converter"
  homepage "https://github.com/beatlabs/proton"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beatlabs/proton/releases/download/v2.0.0/proton_Darwin_x86_64.tar.gz"
      sha256 "170de7d4af647cd6ad019a41f908271a65d1a66187b7df50b516bbd257582d8e"

      def install
        bin.install "proton"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beatlabs/proton/releases/download/v2.0.0/proton_Linux_x86_64.tar.gz"
      sha256 "706a50122c6d27e0ee983ad8c8704483da20f96132df427baad3aa56c2dd844d"

      def install
        bin.install "proton"
      end
    end
  end

  test do
    system "#{bin/proton}"
  end
end
