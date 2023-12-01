class Arxiv2latex < Formula
    desc "A simple shell script to download and extract LaTeX source files from arXiv given an arXiv ID or URL"
    homepage "https://github.com/andreakiro/homebrew-arxiv2latex"
    url "https://github.com/andreakiro/homebrew-arxiv2latex/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "50e359d6cce870c5296597700f1dcdff0becdbb14795c6fc86dfe036966da400"
  
    def install
      bin.install "arxiv2latex.sh" => "arxiv2latex"
    end
  
    test do
        system "test", "-f", "#{bin}/arxiv2latex"
    end
  end
  