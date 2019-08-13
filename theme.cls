% options
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{theme}[2018/08/13 Example LaTeX class]
\LoadClass[]{article}

% package imports
\usepackage[hmargin=30pt, vmargin=30pt]{geometry} % set margins here
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage{fontspec,xltxtra,xunicode}

% color definitions
\definecolor{primary}{HTML}{db4b48} % heading / title colors
\definecolor{text_color}{HTML}{2b2b2b} % primary text color

% font options
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=text_color, Path = fonts/calibri/]{calibri} % primary font

% name section command
\newcommand{\namesection}[2]{
	{ \color{primary}\fontspec[Path=fonts/calibri/]{calibri}\fontsize{17pt}{0pt}\selectfont #1
	} \\ [5pt]
	{ \color{text_color}\fontspec[Path=fonts/calibri/]{calibri}\fontsize{12pt}{0pt}\selectfont #2}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{primary}
\scshape\fontspec[Path = fonts/calibri/]{calibri}\fontsize{14pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

