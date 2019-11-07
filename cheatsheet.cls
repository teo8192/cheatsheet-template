\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsheet}[2019/11/07 Cheatsheet LaTeX class]

\LoadClass[a4paper,notitlepage]{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\pagenumbering{arabic} % needs this even tho page numbering is not used

\RequirePackage{mathtools}
\RequirePackage{multicol} % multiple columns on a page
\RequirePackage{ifthen} % for conditionals in macro definitions

% default margin is 1.875in default on 10pt
\setlength{\topmargin}{-37mm}
\setlength{\textheight}{290mm}
\setlength{\oddsidemargin}{-22mm}
\setlength{\evensidemargin}{-22mm}
\setlength{\textwidth}{203mm}

\setlength{\parindent}{0cm}
\setlength{\parskip}{0cm}

\renewcommand{\normalsize}{\fontsize{7pt}{7pt}\selectfont}

\renewcommand{\section}{
	\@startsection
	{section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}
	{1ex plus .2ex}{\large\sffamily}
}

\pagestyle{empty}

\AtBeginDocument{\begin{multicols}{4}}
\AtEndDocument{\end{multicols}}

\setlength\abovedisplayskip{0pt}
\setlength\belowdisplayskip{2pt}
\setlength\abovedisplayshortskip{-5pt}
\setlength\belowdisplayshortskip{1pt}
