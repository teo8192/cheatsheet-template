# Cheat-sheet class

This is a LaTeX2e class.
Begin your document with

```latex
\documentclass{cheatsheet}
```

The document should be with quite small font and have 4 columns.

Then just write as normal.

The package `mathtools` is included, so `amsmath` is also included.

## Installation

You need to have the `cheatsheet.cls` file in the directory where you use the class.
It is possible to install it permanently on your system, where you may use it from any directory, see [LaTeX/Installing Extra Packages](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages).
Summary; find/create a `texmf` or `texmf/local` directory, and place `cheatsheet.cls` under `tex/latex/base`.

Then you can use the class from wherever.

## Options

One option is included.

If `defpkg` is enabled, some more packages are included.
Enable it like this:

```latex
\documentclass[defpkg]{cheatsheet}
```

There is also a `math` option for some math stuff.
