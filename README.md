# Cheat-sheet class

This is a LaTeX2e class.
Begin your document with

```latex
\documentclass{cheatsheet}
```

The document should be with quite small font and have 4 columns.

Then just write as normal.

The package `mathtools` is included, so `amsmath` is also included.

## Options

Two options are included.

 * `defaultpackages`
 * `defaultsection`

If `defaultpackages` is enabled, some more packages are included.
Enable it like this:

```latex
\documentclass[defaultpackages]{cheatsheet}
```

`defaultsection` is to avoid a bug with unnumbered sections, but in turn the sections get larger.

## Bugs

Do not use unnumbered sections if `defaultsection` is not enabled.
e.g. only use

```latex
\section{test}
```

Do not use:

```latex
\section*{test}
```
