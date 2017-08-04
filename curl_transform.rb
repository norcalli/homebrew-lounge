require 'formula'

class CurlTransform < Formula
  homepage 'https://github.com/norcalli/curl_transform.git'

  def install
    if build.head?
      system "mix", "escript.build"
    end
    bin.install "curl_transform"
  end

  stable do
    url "https://github.com/norcalli/curl_transform/releases/download/0.0.1/curltransform.zip"
    sha256 "cfe383b58c47488baa2d1bc950e6f43083c0b9f91c15dbb2c4325712c5020168"

    depends_on "erlang"
  end

  head do
    url 'https://github.com/norcalli/curl_transform.git'

    depends_on "elixir" => :build
  end

  # test do
  #   # Twice so that effectively nothing changes
  #   system "toggle-osx-shadows"
  #   system "toggle-osx-shadows"
  # end
end
