% Class file for paper, no setting needed, most useful packages already loaded
% by Jiří Moravec

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2017/06/28 Ploss-like class]

\DeclareOption{numbers}{\PassOptionsToPackage{numbers}{natbib}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% loading article class
\LoadClass[a4paper]{article}

% language support, encoding of input and output
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

% increase dimension of text
\RequirePackage[a4paper,top=2.5cm,bottom=2cm,left=3cm,right=3cm, marginparwidth=1.75cm]{geometry}

% support for mathematics
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% support for graphics
\RequirePackage{graphicx}
\RequirePackage[table]{xcolor}

% support for floats
\RequirePackage[width=.90\textwidth,font={small,sf}]{caption}
\RequirePackage{subcaption}
\RequirePackage{rotating}
\RequirePackage{booktabs}
\RequirePackage{placeins}
\RequirePackage{pdflscape}

% code highlight
\RequirePackage{listings}

% linespacing support (single, one and half, double)
\RequirePackage{setspace}

% exensive microtypographical support
\RequirePackage{microtype}

% reference support
\RequirePackage{natbib}
\RequirePackage{multibib}
\RequirePackage{cite}
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}

% support for quoting
\RequirePackage{csquotes}

% title
\RequirePackage{authblk}

% todonotes for latex in-pdf comments
\RequirePackage[colorinlistoftodos]{todonotes}

% for latex calculations
\RequirePackage{calc}

%\bibliographystyle{plos2009}

% % % % % %
% Macros  %
% % % % % %
\newcites{sup}{Supplementary References}
\newcommand{\beginsupplement}{%
    \pagenumbering{roman} 
    \setcounter{figure}{0}
    \setcounter{table}{0}
    \renewcommand{\figurename}{Supplementary Figure}
    \renewcommand{\tablename}{Supplementary Table}
    }
\newcommand{\supref}[1]{\hyperref[#1]{Supplementary~\autoref*{#1}}}

\newcommand{\TODO}[1]{\textcolor{red}{\bf TODO} \textcolor{blue}{#1}}
\DeclareRobustCommand{\comment}[2][]{{\,\textcolor{#1}{\rule[-1mm]{3pt}{1em}}\todo[color=#1]{#2}}\,}

\newcommand{\setmarginspace}[1]{%
    \newlength{\todospace}
    \setlength{\todospace}{#1}
    \setlength{\pdfpagewidth}{\paperwidth + \todospace}
    \setlength{\marginparwidth}{1.75cm + \todospace}
    }

\endinput

% set depth for table of contents
%\setcounter{tocdepth}{4}
%\setcounter{secnumdepth}{0}


%% Set autoref text
%\renewcommand*{\figureautorefname}{Fig.}
%\renewcommand*{\equationautorefname}{Eq.}
%\renewcommand*{\tableautorefname}{Table}
%\renewcommand*{\sectionautorefname}{Sec.}
%\renewcommand*{\subsectionautorefname}{Sec.}
