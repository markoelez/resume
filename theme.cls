% options
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{theme}[2018/08/13 Example LaTeX class]
\LoadClass[]{article}

% package imports
\usepackage[hmargin=20pt, vmargin=30pt]{geometry} % set margins here
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[none]{hyphenat}
\usepackage{hyperref}
\usepackage[compact]{titlesec}
\usepackage[absolute]{textpos}
\usepackage{fontspec,xltxtra,xunicode}

% color definitions
\definecolor{primary}{HTML}{db4b48} % heading / title colors
\definecolor{text_color}{HTML}{2b2b2b} % primary text color

% font options
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=text_color, Path = fonts/calibri/]{calibri} % primary font

% section seperators
\newcommand{\sectionsep}[0]{\vspace{5pt}}

% namesection command
\newcommand{\namesection}[5]{
	{ \color{primary}\fontspec[Path=fonts/calibri/]{calibri}\fontsize{17pt}{0pt}\selectfont #1
	}
	\hfill
	{ \color{text_color}\fontspec[Path=fonts/calibri/]{calibrib}\fontsize{10pt}{0pt}\selectfont #3}
	\\ [5pt]
	{ \color{text_color}\fontspec[Path=fonts/calibri/]{calibri}\fontsize{12pt}{0pt}\selectfont #2}
	\hfill
	{ \color{text_color}\fontspec[Path=fonts/calibri/]{calibrib}\fontsize{10pt}{0pt}\selectfont #5}
}
\titlespacing{\section}{0pt}{\parskip}{-\parskip}

% colored_text command
\newcommand{\colored}[2]{
	{ \color{text_color}\fontspec[Path=fonts/calibri/]{calibrib}\fontsize{10pt}{0pt}\selectfont #1}	
	{ \color{primary}\fontspec[Path=fonts/calibri/]{calibrib}\fontsize{10pt}{0pt}\selectfont #2}
}

% headings command
\titleformat{\section}{\color{primary}
\fontspec[Path = fonts/calibri/]{calibri}\fontsize{14pt}{24pt}\selectfont \raggedright}{} {0em}{}

% Subheadings command
\titleformat{\subsection}{\color{text_color}
\fontspec[Path = fonts/calibri/]{calibrib}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}

% Location command
\newcommand{\location}[1]{\color{text_color}\raggedright\fontspec[Path = fonts/calibri/]{calibrii}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{text_color}\raggedright\fontspec[Path = fonts/calibri/]{calibri}\fontsize{10pt}{13pt}\selectfont {#1 \\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

