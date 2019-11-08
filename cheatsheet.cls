\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsheet}[2019/11/07 Cheatsheet LaTeX class]


\LoadClass[a4paper,notitlepage]{article}
\RequirePackage{ifthen} % for conditionals in macro definitions
\newboolean{defaultpackages}
\setboolean{defaultpackages}{false}
\newboolean{defaultsection}
\setboolean{defaultsection}{false}
\DeclareOption{defaultpackages}{\setboolean{defaultpackages}{true}}
\DeclareOption{defaultsection}{\setboolean{defaultsection}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\pagenumbering{arabic} % needs this even tho page numbering is not used

\RequirePackage{mathtools}
\RequirePackage{sectsty}
\RequirePackage{multicol} % multiple columns on a page

\ifthenelse{\boolean{defaultpackages}}{
\ClassInfo{cheatsheet}{Loading of default packages}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage{array} % for better arrays (eg matrices) in maths
\RequirePackage{paralist} % very flexible & customisable lists (eg. enumerate/itemize, etc.)
\RequirePackage{verbatim} % adds environment for commenting out blocks of text & for better verbatim
\RequirePackage{subfig} % make it possible to include more than one captioned figure/table in a single float
}
{\ClassInfo{cheatsheet}{No loading of default packages}}

% default margin is 1.875in default on 10pt
\setlength{\topmargin}{-37mm}
\setlength{\textheight}{290mm}
\setlength{\oddsidemargin}{-22mm}
\setlength{\evensidemargin}{-22mm}
\setlength{\textwidth}{203mm}

\setlength{\parindent}{0cm}
\setlength{\parskip}{0cm}

\renewcommand{\normalsize}{\fontsize{7pt}{7pt}\selectfont}

\ifthenelse{\boolean{defaultsection}}
{\allsectionsfont{\sffamily\mdseries\upshape}}
{%
	\renewcommand{\section}{%
		\@startsection
		{section}{1}{0pt}{-0.0ex plus -1ex minus -.2ex}
		{1ex plus .2ex}{\large\sffamily\mdseries\upshape}
	}
}


\pagestyle{empty}

\AtBeginDocument{\begin{multicols}{4}}
\AtEndDocument{\end{multicols}}

\setlength\abovedisplayskip{0pt}
\setlength\belowdisplayskip{2pt}
\setlength\abovedisplayshortskip{-5pt}
\setlength\belowdisplayshortskip{1pt}

\endinput
