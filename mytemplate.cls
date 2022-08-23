\ProvidesClass{mytemplate}[This class is for reports and assignments]

%% base class
\LoadClass[
 headings = small,
 fontsize = 12pt,
 parskip = half-,
 DIV = calc,
%  bibliography = totoc,
%  index = totoc
]{scrartcl}

\newcommand{\eq}[1]{\begin{align*}#1\end{align*}} % Macro of equations.
\newcommand{\eqr}[1]{\begin{equation}#1\end{equation}} % Macro of equations.
\def\@project{Project}
\newcommand{\project}[1]{
  \def\@project{#1}
}
\def\@type{Type}
\newcommand{\type}[1]{
  \def\@type{#1}
}
\newcommand{\inlinecode}[2]{{\lstinline[language=#1]$#2$}}



%\RequirePackage{geometry} % The geometry of the paper such as the margins, footnote, header, etc. 

%% required packages
\RequirePackage{cmap}
\RequirePackage{lmodern}
\RequirePackage{microtype}

\RequirePackage[per-mode=fraction]{siunitx}

%% page setup
\KOMAoptions{
 paper = A4,
 pagesize,
 headlines = 1.1,
 headsepline,
 DIV = last
}
\typearea{15}

%% head and foot
\RequirePackage{lastpage}
\RequirePackage[
 automark,
 headsepline,
 nouppercase,
 komastyle
]{scrpage2}


\RequirePackage{amsmath,amsthm,amssymb} % Math package.

\RequirePackage{graphicx}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{float} % putting image to where you want. check this line
\RequirePackage[xindy, acronym, shortcuts]{glossaries}
\RequirePackage{xurl}

\RequirePackage[
 colorlinks = true,
 linkcolor  = ,
 linktoc    = all,
 urlcolor   =
]{hyperref}

\RequirePackage{cleveref}

%% font family: sans serif
\renewcommand{\familydefault}{\sfdefault}

%% page style
\pagestyle{scrheadings}

\ohead[]{\@title}
\ihead[]{\@project}
\chead[]{}
\ofoot[]{\pagemark/\pageref{LastPage}}
\ifoot[]{\@date}

\setkomafont{pageheadfoot}{\small\usekomafont{pagenumber}}

\renewcommand*{\titlepagestyle}{empty}
\renewcommand*{\indexpagestyle}{empty}

%% captions
\setkomafont{captionlabel}{\sffamily\bfseries}
\setcapindent{0em}


%% penalties
\clubpenalty 10000
\widowpenalty 10000
\displaywidowpenalty 10000


\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}
\definecolor{inline_bg}{rgb}{0.8,0.8,0.8}

% Configuration of python code.
\lstset{ 
  backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}; should come as last argument
  basicstyle={\small\ttfamily},    % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  deletekeywords={...},            % if you want to delete keywords from the given language
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=tb,                        % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=c,                 % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=4,                     % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

