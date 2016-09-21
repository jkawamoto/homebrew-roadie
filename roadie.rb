#
# assets/formula.go
#
# Copyright (c) 2016 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.2.6"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.6/roadie_0.2.6_darwin_amd64.zip"
    sha256 "ae0601c9908b92c30a3a2b799fe58d29766ea579d2ecefb1752932ef99b12cca"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.6/roadie_0.2.6_darwin_386.zip"
    sha256 "bbf59380aa06bdd9888765e776ae6cbcc4fc1000c50d16bb6dd201aa779c1e65"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
