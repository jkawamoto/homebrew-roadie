#
# assets/formula.go
#
# Copyright (c) 2016-2017 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.3.6"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.6/roadie_0.3.6_darwin_amd64.zip"
    sha256 "77e99a9de6308c8d7eaf6f16c40a47ba2f8f7294b6e63e3345b90bba43e6060b"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.6/roadie_0.3.6_darwin_386.zip"
    sha256 "a55d789dc92172c93c0614957bc2ee5d5412c42b56d8d8d85e8b7bbf1a1109f7"
  end

  system "brew tap caskroom/cask"

  def install
    system "brew cask install google-cloud-sdk" => :run
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
