class Arxiv2latex < Formula
    desc "A simple shell script to download and extract LaTeX source files from arXiv given an arXiv ID or URL"
    homepage "https://github.com/andreakiro/homebrew-arxiv2latex"
    url "https://github.com/andreakiro/homebrew-arxiv2latex/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "27b5f9ddfb69a88c151177a99a53a9a74669c459d555a41f74ddc01027cfe3e0"
  
    def install
      bin.install "arxiv2latex.sh" => "arxiv2latex"
    end
  
    test do
        system "test", "-f", "#{bin}/arxiv2latex"
    end
  end
  