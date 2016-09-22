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
  version "0.3.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.0/roadie_0.3.0_darwin_amd64.zip"
    sha256 "557df9ee07da95391c10680cb2476c7c3840e4db7431cfea82d13ed7b838c636"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.0/roadie_0.3.0_darwin_386.zip"
    sha256 "dbe8f8942eae3be45788cc963e8733ba094d4a6f49701141a5a6b79106f7255b"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
