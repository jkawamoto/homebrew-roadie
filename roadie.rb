class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.1.4"

  if Hardware.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.1.4/roadie_0.1.4_darwin_amd64.zip"
    sha256 "0974337b85240e4803694a0d7f8cbca4da8e6b6efc8e8855be3ecefb1a763a07"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.1.4/roadie_0.1.4_darwin_386.zip"
    sha256 "7fbae4e94e1401f6c690eabba3c38e02eee03e791339b166f3d9d670bb8bf08a"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end
end
