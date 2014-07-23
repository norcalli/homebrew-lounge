require 'formula'

class Pastie < Formula
  homepage 'https://github.com/norcalli/scripts'
  url 'https://github.com/norcalli/scripts', :using => :git
  version '1.6'

  def install
    bin.install "pastie"
  end

  test do
  end
end
