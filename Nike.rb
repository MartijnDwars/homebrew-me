require "formula"

class Nike < Formula
  url "https://github.com/MartijnDwars/nike/releases/download/0.1/nike.zip"
  sha256 "9ba520499fecf20beb06ea60c887ba90b11b86fb3a22bbaa3eb5fd6976816ff5"

  def install
      inreplace "brew/nike", "##PREFIX##", "#{prefix}"
      prefix.install "nike-assembly-1.0.jar"
      bin.install "brew/nike"
  end
end
