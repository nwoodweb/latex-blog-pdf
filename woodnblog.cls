%% Copyright 2025 Nathan Wood (contact@nwoodweb.xyz)
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Nathan Wood
%
% This work consists of the file woodnblog.cls

\LoadClass[a4paper]{article}
	\NeedsTeXFormat{LaTeX2e}
	\ProvidesClass{woodnblog}[2025/01/15 Nathan Wood contact@nwoodweb.xyz]

	% Requisite packages
	\RequirePackage[margin=1in]{geometry}
	\RequirePackage{xcolor}
	\RequirePackage{graphicx}
	\RequirePackage{amsmath,amsfonts,amssymb}
	\RequirePackage{fancyhdr}  % custom headers/footers
	\RequirePackage{lastpage}
	\RequirePackage[utf8]{inputenc}
	\RequirePackage[english]{babel}
	\RequirePackage{indentfirst}
	\RequirePackage{float}
	\RequirePackage{listings}
	\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
	\ProcessOptions\relax

	% Article Class Edit

	% Green Title Color
	\definecolor{titlecol}{HTML}{005f00}

	% Blue Section, Bold, and Italic Color
	\definecolor{sectioncol}{HTML}{120A8F}
	\definecolor{boldcol}{HTML}{120A8F}

	% Listing background color
	\definecolor{listingbg}{HTML}{ffffea}

	%URL SETUP
	\RequirePackage[colorlinks=true]{hyperref}

	\newcommand{\titlecolor}{\color{titlecol}}
	\newcommand{\sectioncolor}{\color{sectioncol}}


	\renewcommand{\maketitle}{%
		\begingroup
		\fontsize{24}{32}
		\fontseries{b}
		\fontshape{sl}
		\selectfont
		\titlecolor
		\@title
		\medskip
		\endgroup
		%
	}
	\renewcommand{\section}{%
	\@startsection
	{section}{1}{0pt}{-1.5ex plus -1ex minus -0.45ex}%
	{1ex plus .2ex}{\large\fontseries{b}\selectfont\sectioncolor}%
	}

	% page number / total pages

	\pagestyle{fancy}
	\lhead{\@title}
	\chead{}
	\rhead{}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
	\lfoot{\url{https://www.nwoodweb.com}}
	\cfoot{CC-BY-SA 4.0}
	\rfoot{\thepage/\pageref{LastPage}}

	% Code listings

	\lstdefinestyle{mystyle}{
		backgroundcolor = \color{listingbg},
		basicstyle = \small,
		keywordstyle = \bfseries,
		commentstyle = \color{sectioncol},
		numbers = left,
		numbersep = 5pt,
		showtabs = false,
	}
	\lstset{style=mystyle}
