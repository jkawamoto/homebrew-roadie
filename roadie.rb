#
# roadie.rb
#
# This file is part of Roadie.
#
# Roadie is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Roadie is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Roadie.  If not, see <http://www.gnu.org/licenses/>.
#
require 'rbconfig'
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.3.12"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.12/roadie_0.3.12_darwin_amd64.zip"
      sha256 "312e57ea73bd89d5edcea0be63c522b94f4f3c68c8d104c5cdb7c4fd3bd5112a"
    when /linux/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.12/roadie_0.3.12_linux_amd64.tar.gz"
      sha256 "f87cea212b9998953b9e5cef5f26f62fcb053072d5f76af2b3820ae2a9c8cfa1"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.12/roadie_0.3.12_darwin_386.zip"
      sha256 "e411795e0d9b4e822ec7607144275c7cd5c79750f07ce603de6c84a353c5aecf"
    when /linux/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.12/roadie_0.3.12_linux_386.tar.gz"
      sha256 "18ade1dab23a4f485d11090ddb22b545cb8a861ed8cf55a9f09ced78039f61a6"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
