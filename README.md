# Cheatsheet template

To use this template, begin your document with

```latex
\input{cheatsheet.tex}
```

Inside your document you can use the following envinronments and commands:

 * cheat
 * cheatsheetsection
 * maths

`cheat` is the environment you should put all your text in.

`cheatsheetsection` takes one argument and prints it a little bigger.

`maths` takes one argument and one optional argument.

Example:

```latex
\maths{3+5}
```

Will only display the equation with no numbering.


```latex
\maths[eq_1]{3+5}
```

Will display the equation with numbering and it is labeled with the label `eq_1`.
Then later in the document you may reference it `... as you can see in Equation~\ref{eq_1}.`
