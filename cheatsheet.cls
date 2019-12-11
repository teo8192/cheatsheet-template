\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsheet}[2019/11/07 Cheatsheet LaTeX class]


\LoadClass[a4paper,notitlepage]{article}
\newif\if@defaultpackages\@defaultpackagesfalse
\DeclareOption{defaultpackages}{\@defaultpackagestrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\pagenumbering{arabic} % needs this even tho page numbering is not used

\RequirePackage{etoolbox}
\RequirePackage{float}
\RequirePackage{mathtools}
\RequirePackage{amssymb}
\RequirePackage{sectsty}
\RequirePackage[colaction]{multicol} % multiple columns on a page

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

\setlength{\columnsep}{0.2cm}

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
\renewcommand\l@subsubsection{\@dottedtocline{3}{1em}{3em}}

%\renewcommand\ext@table{toc}
%\renewcommand\ext@figure{toc}

%\renewcommand\l@table[2]{\@dottedtocline{2}{1em}{3em}{#1~(table)}{#2}}
%\renewcommand\l@figure[2]{\@dottedtocline{2}{1em}{3em}{#1~(figure)}{#2}}

\def\@numberofcolumns{4}
\newcommand{\setnumcols}[1]{\def\@numberofcolumns{#1}}

\pagestyle{empty}

\AtBeginDocument{\begin{multicols*}{\@numberofcolumns}}
\AtEndDocument{\end{multicols*}}

\setlength\abovedisplayskip{0pt}
\setlength\belowdisplayskip{2pt}
\setlength\abovedisplayshortskip{-5pt}
\setlength\belowdisplayshortskip{1pt}

\setlength{\abovecaptionskip}{0pt}
\setlength{\intextsep}{2pt plus 2pt minus 2pt}
\setlength{\floatsep}{2pt plus 2pt minus 2pt}
\setlength{\textfloatsep}{2pt plus 2pt minus 2pt}

\newcounter{brnk@col@count}
\renewcommand*\addcontentsline[3]
  {%
    \addtocontents{#1}
      {%
        \protect\contentsline{#2}{#3}
          {\thepage\ifnum\doublecol@number>0\relax.\string\brnk@cur@col\fi}%
      }%
  }
\def\brnk@patch@last
  {%
    \stepcounter{brnk@col@count}%
    \protected@write\@auxout{}%
      {%
        \string\@writefile{toc}%
          {\string\def\string\brnk@cur@col{\arabic{brnk@col@count}}}%
      }%
  }
\def\brnk@patch@else
  {%
    \ifmc@firstcol
      \setcounter{brnk@col@count}{0}%
    \fi
    \brnk@patch@last
  }
\def\brnk@patch@error
  {%
    \GenericError{}
      {Patching of \string\mc@col@status@write\space failed}
      {%
        Make sure `colaction` was set as an option for `multicol`.%
        \MessageBreak
        Else you're screwed, don't use the code provided here.\MessageBreak%
      }
      {No further help available.}%
  }
\pretocmd\mc@lastcol@status@write{\brnk@patch@last}{}{\brnk@patch@error}
\pretocmd\mc@col@status@write{\brnk@patch@else}{}{\brnk@patch@error}

\endinput
