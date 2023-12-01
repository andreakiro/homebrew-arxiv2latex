class Arxiv2latex < Formula
    desc "A simple shell script to download and extract LaTeX source files from arXiv given an arXiv ID or URL"
    homepage "https://github.com/andreakiro/homebrew-arxiv2latex"
    url "https://github.com/andreakiro/homebrew-arxiv2latex/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "fcca959100ba1dc60abcbbd9ff95465d91dc8afe7b697007ac100a185b80d168"
  
    def install
      bin.install "arxiv2latex.sh" => "arxiv2latex"
    end
  
    test do
        system "test", "-f", "#{bin}/arxiv2latex"
    end
  end
  