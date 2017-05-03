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
  version "0.3.7"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.7/roadie_0.3.7_darwin_amd64.zip"
    sha256 "6bee310a8f25a2199f80bbd24cf070abdb2dfecdea757ca0affcaa7071f7e958"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.7/roadie_0.3.7_darwin_386.zip"
    sha256 "310b28cc5a01d2ff63ec14f47bc67147078082b13790e3779dcc67656043e558"
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
