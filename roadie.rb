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
  version "0.3.5"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.5/roadie_0.3.5_darwin_amd64.zip"
    sha256 "45306cc3ce2a8de815684da7b3a3c4e47ef248405d814e6f53e772d27973dfef"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.5/roadie_0.3.5_darwin_386.zip"
    sha256 "dc31efe6c05b12f874f17791d84dce25733eefa0e86c826c5a5e1c49934d666f"
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
