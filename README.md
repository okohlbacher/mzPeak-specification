# mzPeak specification

This is the home for the documentation describing the mzPeak format.

`index.md` is the main specification document, written using Markdown.


## Building

The specification is a single Markdown document, `index.md`, rendered to a self-contained HTML page with [pandoc](https://pandoc.org/).

To build locally with [`just`](https://github.com/casey/just):

```sh
just build      # runs pandoc, writes index.html
```

or invoke pandoc directly:

```sh
pandoc --from markdown+smart --to=html5 --css=static/css/styling.css -s index.md -o index.html
```

On every push to `main`, the [`Pages` workflow](.github/workflows/pages.yml) builds the page in a `pandoc/core` container, copies `static/` alongside it, and deploys the result to GitHub Pages.

## Afterword

It originally lived along-side the reference implementation, but has been relocated to simplify its lifecycle and be easier to find.