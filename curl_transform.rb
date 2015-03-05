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
    sha1 "e129e5b06c1e4ed8571ab577c4f36213f47e0760"

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
