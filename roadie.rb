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
  version "0.2.4"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.4/roadie_0.2.4_darwin_amd64.zip"
    sha256 "7a3b6cba812161fdff036cb2f8b4d93c5ce0e0494bc1eeef4b399e1f51c7dbaa"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.4/roadie_0.2.4_darwin_386.zip"
    sha256 "d895c5a04eb07a993f5c189a2ccf94349967f510a159c2a841d6c9770fb1907f"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
