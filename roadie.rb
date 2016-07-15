class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.1.2"

  if Hardware.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.1.2/roadie_0.1.2_darwin_amd64.zip"
    sha256 "d45f824163e2a516d4cb6bb5f9ed0dcf32af5d6566ff75fb5508d2200eeae988"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.1.2/roadie_0.1.2_darwin_386.zip"
    sha256 "2011c7605e7c0840ab0e6efcd766be10e024aeeb4d1624279c75474a95e68777"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end
end
