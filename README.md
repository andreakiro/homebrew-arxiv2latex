# arxiv2latex-sh

You can use (versioned) arXiv abs, pdf or id:

- https://arxiv.org/abs/1706.03762v7
- https://arxiv.org/pdf/1706.03762.pdf
- 1706.03762v6

## Usage

```shell
chmod +x arxiv2latex.sh
sh arxiv2latex.sh <arxiv-url-or-id>
```

## Brew

```shell
brew tap andreakiro/arxiv2latex
brew install arxiv2latex
arxiv2latex <arxiv-url-or-id>
```

## shasum
```shell
shasum -a 256 homebrew-arxiv2latex-<tag>.tar.gz
```

## Limitations

arXiv stores only `.bbl` file so you won't find `.bib`