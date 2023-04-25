% \iffalse meta-comment
%
% hmcmathart.cls -- Harvey Mudd College Mathematics Basic Document
%                    LaTeX Class File
%
% Copyright (C) 2007
%
% Claire Connelly <cmconnelly@gmail.com>
%
% License:
%
%   This program is free software; you can redistribute it and/or
%   modify it under the terms of the GNU General Public License as
%   published by the Free Software Foundation; either version 2 of the
%   License, or (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with this program; if not, write to the Free Software
%   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
%   02111-1307  USA
%
% \fi
%%

\ProvidesClass{hmcmathart}[2007/10/16 HMC Mathematics Article class]
\NeedsTeXFormat{LaTeX2e}

%%% Declare and set some options.

%%% None at this time.

\DeclareOption{twocolumn}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{twoside}


%\DeclareOption*{\PassOptionsToClass}{\CurrentOption}{article}}
\ProcessOptions

%%% Load the book class (or article class for proposals) with some
%%% default options.
%\LoadClassWithOptions[twoside]{article}
\LoadClass{article}




%%% Get some useful information when errors occur.
\setcounter{errorcontextlines}{25}


%%% Load some required/very useful packages.
\RequirePackage{xspace}
\RequirePackage{ifthen}
\RequirePackage{cmcshorthand}
\RequirePackage{cmcrules}
\RequirePackage{lastpage}
\RequirePackage{svn}
\RequirePackage{microtype}

%%% Set the default typefaces via packages.
\RequirePackage{mathpazo}
\RequirePackage[scaled=.95]{helvet}
\RequirePackage{cmtty}




%%% Set the page layout parameters.
% \usepackage[%
% letterpaper,
% % includeall,
% ignorehead,
% % asymmetric,
% twocolumn
% ]{geometry}


%%% Define some commands for specifying information for the title page
%%%  (and other parts of the document).

%\renewcommand{\title}[1]{\gdef\@title{#1}}
%\renewcommand{\@title}{\@latex@warning@no@line{No \noexpand\title given}}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
%\newcommand{\@subtitle}{\@latex@warning@no@line{No \noexpand\subtitle given}}
\newcommand{\@subtitle}{}



%%% Define the layout of the title block.

  \renewcommand{\@maketitle}{%
    \let \footnote \thanks
    \vskip -60\p@
    \begin{sf}
    \noindent{\LARGE \raggedright \@title \par}%
    \vskip 0.75em%
    \noindent{\large
      \lineskip .5em%
      \raggedright \@subtitle
      \@author}\par
%    {\large \@date}%
\end{sf}
%\hrulefill
\noindent\rule{\textwidth}{5pt}
    \vskip 0.75em%
\pagestyle{fancy}
\thispagestyle{plain}
 % \end{center}%
 % \par
 % \vskip 1.5em
}

\renewcommand{\section}{%
  \@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\raggedright\sffamily\Large\bfseries}}
\renewcommand{\subsection}{%
  \@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\raggedright\sffamily\large\bfseries}}
\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\raggedright\sffamily\normalsize\bfseries}}
\renewcommand{\paragraph}{%
  \@startsection{paragraph}{4}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {-1em}%
  {\raggedright\sffamily\normalsize\bfseries}}
\renewcommand{\subparagraph}{%
  \@startsection{subparagraph}{5}{\parindent}%
  {3.25ex \@plus1ex \@minus .2ex}%
  {-1em}%
  {\raggedright\sffamily\normalsize\bfseries}}


%%% Add Fancy Headers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\fancyhead[LE,RO]{\textsf{\textsf{\@title}}
\fancyfoot[LE,RO]{\textsf{\textbf{\thepage} of \textbf{\pageref{LastPage}}}}
\fancyfoot[LO,RE]{\textsf{Last Revised: \SVNDate}}
}

\fancypagestyle{plain}{%
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{1pt}
\fancyfoot[RO]{\textsf{\textbf{\thepage} of \textbf{\pageref{LastPage}}}}
\fancyfoot[LO]{\textsf{Last Revised: \SVNDate}}
}



%% Ragged bottom is better than the alternative...

%\raggedbottom

\pagestyle{empty}

% \oldstylenums
% \def\oldstylenums#1{%
%    \begingroup
%     \spaceskip\fontdimen\tw@\font
%     \usefont{OML}{\rmdefault}{\f@series}{it}%
%     \mathgroup\symletters #1%
%    \endgroup
% }
