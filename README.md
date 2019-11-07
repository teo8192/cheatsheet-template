# Cheatsheet class

This is a LaTeX2e class.
Begin your document with

```latex
\documentclass{cheatsheet}
```

The document should be with quite small font and have 4 columns.

Then just write as normal.

the package mathtools is included, so amsmath is also included.

## Bugs

Do not use unumbered sections.
e.g. only use

```latex
\section{test}
```

Do not use:

```latex
\section*{test}
```
