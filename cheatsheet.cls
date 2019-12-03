\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsheet}[2019/11/07 Cheatsheet LaTeX class]


\LoadClass[a4paper,notitlepage]{article}
\newif\if@defaultpackages\@defaultpackagesfalse
\DeclareOption{defaultpackages}{\@defaultpackagestrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\pagenumbering{arabic} % needs this even tho page numbering is not used

\RequirePackage{mathtools}
\RequirePackage{sectsty}
\RequirePackage{multicol} % multiple columns on a page

\if@defaultpackages
\ClassInfo{cheatsheet}{Loading of default packages}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage{array} % for better arrays (eg matrices) in maths
\RequirePackage{paralist} % very flexible & customisable lists (eg. enumerate/itemize, etc.)
\RequirePackage{verbatim} % adds environment for commenting out blocks of text & for better verbatim
\RequirePackage{subfig} % make it possible to include more than one captioned figure/table in a single float
\fi

% default margin is 1.875in default on 10pt
\setlength{\topmargin}{-37mm}
\setlength{\textheight}{290mm}
\setlength{\oddsidemargin}{-22mm}
\setlength{\evensidemargin}{-22mm}
\setlength{\textwidth}{203mm}

% fuck indentation in particular
\setlength{\parindent}{0cm}
\setlength{\parskip}{0cm}

% Small fontsize
\renewcommand{\normalsize}{\fontsize{7pt}{7pt}\selectfont}

% Custon titles n shit
\RequirePackage{titlesec}
\titleformat{\section}[block]% shape
{\large\sffamily\mdseries\upshape\bfseries}% % format
{\thesection\hfill}% label
{.5em}% separator between label and section stuff
{}% before-code
{}% after-code
\titleformat{\subsection}[block]% shape
{\normalfont\sffamily\mdseries\upshape\bfseries}% % format
{\thesubsection}{.5em}{}{}
\titleformat{\subsubsection}[block]% shape
{\sffamily\bfseries}% % format
{\thesubsubsection}{.5em}{}{}
\titlespacing*{\section}{0pt}% left-sep
{0pt}% before-sep
{0pt}% after-sep
\titlespacing*{\subsection}{0pt}{1pt}{1pt}
\titlespacing*{\subsubsection}{0pt}{1pt}{1pt}

\renewcommand{\thesection}{\arabic{section}}

\renewcommand{\theequation}{{\oldstylenums{\thesection}.\oldstylenums{\arabic{equation}}}}

% ToC definitions
\renewcommand\l@section{\@dottedtocline{1}{0em}{1em}}
\renewcommand\l@subsection{\@dottedtocline{2}{1em}{2em}}
\renewcommand\l@subsubsection{\@dottedtocline{2}{1em}{3em}}

%\renewcommand\ext@table{toc}
%\renewcommand\ext@figure{toc}

%\renewcommand\l@table[2]{\@dottedtocline{2}{1em}{3em}{#1~(table)}{#2}}
%\renewcommand\l@figure[2]{\@dottedtocline{2}{1em}{3em}{#1~(figure)}{#2}}

\pagestyle{empty}

\AtBeginDocument{\begin{multicols}{4}}
\AtEndDocument{\end{multicols}}

\setlength\abovedisplayskip{0pt}
\setlength\belowdisplayskip{2pt}
\setlength\abovedisplayshortskip{-5pt}
\setlength\belowdisplayshortskip{1pt}

\endinput
