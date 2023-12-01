class Arxiv2latex < Formula
    desc "A simple shell script to download and extract LaTeX source files from arXiv given an arXiv ID or URL"
    homepage "https://github.com/andreakiro/arxiv2latex-sh"
    url "https://github.com/andreakiro/arxiv2latex-sh/archive/v1.0.0.tar.gz"
    sha256 "017560742b97f7c69e26bf5e7e7b091e218d351377cb78f62b1a7094a2340bf2"
  
    def install
      bin.install "arxiv2latex.sh" => "arxiv2latex"
    end
  
    test do
        system "test", "-f", "#{bin}/arxiv2latex"
    end
  end
  