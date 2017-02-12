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
  version "0.3.4"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.4/roadie_0.3.4_darwin_amd64.zip"
    sha256 "85fa6713ab1638d40f91b657be177aba57e631b50d572b28e65e303581f38a3b"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.4/roadie_0.3.4_darwin_386.zip"
    sha256 "d934279bc26c4128baff329f97ed21cfdba9d1c9a84839981c7553f3c9b9707f"
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
