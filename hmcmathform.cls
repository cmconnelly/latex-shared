% \iffalse meta-comment
% 
% hmcmathform.cls -- Harvey Mudd College Mathematics Form LaTeX Class File
%
% $Id$
%
% Copyright (C) 2007
%
% Claire Connelly <cmc@math.hmc.edu>
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

\ProvidesClass{hmcmathform}[2007/10/16 HMC Mathematics Form class]
\NeedsTeXFormat{LaTeX2e}

%%% Declare and set some options.

%%% None at this time.
\ExecuteOptions{}
\ProcessOptions

%%% Load the book class (or article class for proposals) with some
%%% default options.
\LoadClass[10pt,oneside]{article}


%%% Get some useful information when errors occur.
\setcounter{errorcontextlines}{25}


%%% Load some required/very useful packages.
\RequirePackage{cmtty}
\RequirePackage{xspace}
\RequirePackage{ifthen}
\RequirePackage{cmcshorthand}
\RequirePackage{cmcrules}


%%% Set typefaces.
\RequirePackage[full]{textcomp}
% \RequirePackage{sourceserifpro}
\RequirePackage[scaled=0.98,default,sfdefault]{sourcesanspro} % sans-serif
\RequirePackage{sourcecodepro} % sans-serif typewriter
\RequirePackage[bigdelims,vvarbb]{newpxmath} % bb from STIX
\RequirePackage[scr=rsfso]{mathalfa} % mathcal
\RequirePackage{microtype}
\DisableLigatures{encoding = T1, family = tt* }
\linespread{1.025}


%%% Set the page layout parameters for a form.
\setlength{\textwidth}{6.75in}
\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{0in}

\setlength{\headheight}{15pt}
\setlength{\headsep}{15pt}
\setlength{\topmargin}{-.75in}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\setlength{\textheight}{10.5in}
\setlength{\footskip}{29pt}
\setlength{\marginparwidth}{.5in}
\setlength{\marginparsep}{5pt}


%%% Define some commands for specifying information for the title page
%%%  (and other parts of the document).

\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\@subtitle}{\@latex@warning@no@line{No \noexpand\subtitle given}}



%%% Define the layout of the title block.

\renewcommand{\maketitle}{%
{\begin{Huge}
\noindent\textsf{\textbf{\@title}}
\end{Huge}
\par
\begin{large}
\noindent \@subtitle
\end{large}
}}


%% Ragged bottom is better than the alternative...

\raggedbottom

\pagestyle{empty}

