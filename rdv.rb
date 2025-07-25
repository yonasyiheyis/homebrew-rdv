# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rdv < Formula
  desc "Interactive dev‑env config manager"
  homepage "https://github.com/yonasyiheyis/rdv"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yonasyiheyis/rdv/releases/download/v0.2.0/rdv_0.2.0_darwin_amd64.tar.gz"
      sha256 "ae6490de8192de7d61aa9036ab25a1c88c2d8feee56b5f79a448da3e58903a07"

      def install
        bin.install "rdv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yonasyiheyis/rdv/releases/download/v0.2.0/rdv_0.2.0_darwin_arm64.tar.gz"
      sha256 "761ff1d8190142d24eb39c25a99dd1c3d980ec07bd0a69bf1df986c3cefd2836"

      def install
        bin.install "rdv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/yonasyiheyis/rdv/releases/download/v0.2.0/rdv_0.2.0_linux_amd64.tar.gz"
      sha256 "e193a87febf7cb390e9e019a3f82c635d67379a3471599c1f0fa58c78ae53db8"
      def install
        bin.install "rdv"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/yonasyiheyis/rdv/releases/download/v0.2.0/rdv_0.2.0_linux_arm64.tar.gz"
      sha256 "e65bff837da4fe344a801a265bcdb0c991c8f6c3ede12d063beed9bc1bcb4f48"
      def install
        bin.install "rdv"
      end
    end
  end

  def caveats
    <<~EOS
      After installation, enable shell completion:
        rdv completion zsh > $(brew --prefix)/share/zsh/site-functions/_rdv
    EOS
  end

  test do
    rdv --version
  end
end
