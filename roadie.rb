class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.1.3"

  if Hardware.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.1.3/roadie_0.1.3_darwin_amd64.zip"
    sha256 "36093f0352d234aa68bc5a30dfe9d6e00374f29c04bedef2810d641f261ebc10"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.1.3/roadie_0.1.3_darwin_386.zip"
    sha256 "ef526d990fde1bb0c74d3e953d7ad84b848f3e6a70083ed3755ce2500c09f482"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end
end
