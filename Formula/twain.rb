
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
 
  version "2.0"

  resource "twain" do
  url "https://github.com/MrLolo102/twain/releases/download/2.0/twain-mac.tar.gz"
  sha256 "f019964241186a51c2fd23b5421847dc80a99ab06a3f4da7a66a111ba17d5b43"
  end
 
  def install
   bin.install "twain"
   
   resource("twain").stage {
   	system "./configure", "--prefix=#{prefix}"
   	system "make", "install"}
   
  end
end

  
