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
  version "0.3.8"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.8/roadie_0.3.8_darwin_amd64.zip"
    sha256 "fe4a7718ce255a9d9bb203af11ce5990ba33773beafd65d7285121045a7c276b"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.8/roadie_0.3.8_darwin_386.zip"
    sha256 "9a3e170bb24dbdee0b11118cebd50507e7fe29c4cfb0992b3d1525f472fdf080"
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
