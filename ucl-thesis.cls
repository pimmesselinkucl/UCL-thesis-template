% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "ucl-thesis.cls",
%     version         = "0.1",
%     date            = "26 April 2013",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, ucl-thesis, harvard-thesis",
%     supported       = "send email to pim.messelink.10@ucl.ac.uk",
%     docstring       = "A thesis class for a UCL dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucl-thesis}[2012/04/05 v0.4 University College London Thesis Class]
\LoadClass[12pt, oneside, a4paper]{book}


% Figures & Tables
\RequirePackage{graphicx}
\RequirePackage[closeFloats, noSeparatorLine]{fltpage} 
\RequirePackage{subfig}
\RequirePackage{multirow}
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={sf,bf,small},textfont={sf,small},justification=RaggedRight,margin=0pt, figurewithin=section, tablewithin=section]{caption}
\RequirePackage{float}

% Maths
\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathspec}

%Physics
\RequirePackage{siunitx}

% Typesetting
\RequirePackage{url}
\RequirePackage{hyperref}
\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=NavyBlue,
    filecolor=black,
    linkcolor=black,
    urlcolor=NavyBlue,
}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage{verbatim}
\RequirePackage[subfigure,titles]{tocloft}
\setcounter{tocdepth}{1}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\renewcommand\listfigurename{Listing of figures}
\RequirePackage{rotating}
\RequirePackage{lscape}
\RequirePackage{lettrine}
\RequirePackage[margin=20mm, left=40mm, a4paper]{geometry}
\RequirePackage{fancyhdr} 
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\RequirePackage{titling}
\RequirePackage{setspace}

\setlength{\headheight}{15pt}
\onehalfspacing
\raggedright
\parindent 12pt

% Font
\RequirePackage[LY1,T1,EU1]{fontenc}
\RequirePackage{fontspec,xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
\setromanfont[Mapping=tex-text, 
			  Numbers=OldStyle, 
			  Ligatures={Common}, 
			  SizeFeatures={%
		          {Size={-10}, Font=* Caption},
		          {Size={10-13.0}, Font=*},
		          {Size={13.01-19.9}, Font=* Subhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
		       {Size={19.91-},Font=* Display, Ligatures=Rare, Contextuals={Swash,Alternate}}}]
			  {Arno Pro}  
%Set fonts for Mac Specific (Comment out on Windows XP)
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue} 
%\setmonofont[Scale=MatchLowercase]{Consolas}
\setmathsfont(Digits,Latin,Greek)[Numbers={OldStyle,Proportional}]{Arno Pro} 
\setmathrm{Arno Pro}

% Colors
%\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{color}
\definecolor{NavyBlue}{rgb}{0.0627, 0.2510, 0.4627}
\definecolor{chaptergrey}{rgb}{0.0627, 0.2510, 0.4627}


% Bibliography
\RequirePackage[numbers, comma, sort&compress]{natbib}      

% Misc
\RequirePackage{pdfsync}
\synctex=1
\RequirePackage{afterpage} 
\RequirePackage{calc}
\RequirePackage[toc,page]{appendix}

% Definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitycountry#1{\gdef\@universitycountry{#1}}

% Title page
\renewcommand{\maketitle}{ 
	\singlespacing
	\thispagestyle{empty}
	\vspace*{\fill} \vspace{150pt} \begin{center}
	\Huge \textcolor{NavyBlue}{\textit{\thetitle}} \normalsize \\ \sc \vspace{100pt}
	a dissertation presented \\ by\\
	\theauthor\\ to\\ The \@department\\ 
	\vspace{12pt}
	in partial fulfillment of the requirements\\ 
	for the degree of\\ \@degree\\ 
	\vspace*{\fill}
	\includegraphics{frontmatter/NavyBlueu}\\
	\vspace{12pt}
	\@university\\ \@universitycity, \@universitycountry\\ 
	\@degreemonth\ \@degreeyear
	\end{center}
}

% Copyright page
\newcommand{\copyrightpage}{
	\newpage \thispagestyle{empty} \vspace*{\fill}
	\sc \noindent I, \theauthor, confirm that the work presented in this thesis is my own. Where information has been derived from other sources, I confirm that this has been indicated in the thesis. \\ \vspace*{\fill}
	\sc \noindent \copyright~\textit{\@degreeyear \hspace{3pt}~- \theauthor} \\
	\noindent All rights reserved.
	\vspace*{\fill} \newpage \rm
}
% You might also consider licensing your work under Creative Commons). See: http://creativecommons.org/weblog/entry/12824 for other PhD students who have released their work under creative commons.

% Abstract page
\newcommand{\abstractpage}{
	\newpage
	\pagestyle{fancy}
	\lhead{Thesis advisor: \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt} 
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{NavyBlue}{\textit{\@title}} \normalsize\\
	\vspace*{15pt}
	\sc Abstract \\ \rm
	\end{center}
	\input{frontmatter/abstract}
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
}

% Dedication page
\newcommand{\dedicationpage}{
	\pagestyle{fancy}
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\sc \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
}

% List of authors page
\newcommand{\authorlist}{
	\pagestyle{fancy}
	\newpage
	\thispagestyle{fancy} 
	\chapter*{Author List}
	\noindent \input{frontmatter/authorlist}
	\newpage \rm
}

% Acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
}
	
% An environment for paragraph-style section
\providecommand\newthought[1]{
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}
}
