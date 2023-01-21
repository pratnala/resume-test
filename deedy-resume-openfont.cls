% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin = 0.8cm, vmargin = 0.4cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{2A2A2A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color = primary, Path = fonts/dubai/, BoldFont = Dubai-Bold.ttf, Mapping = tex-text]{Dubai-Regular.ttf}
\setsansfont[Path = fonts/dubai/, Mapping = tex-text]{Dubai-Light.ttf}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/dubai/, Mapping = tex-text]{Dubai-Regular.ttf}\selectfont #1
\fontspec[Path = fonts/dubai/, Mapping = tex-text]{Dubai-Regular.ttf}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/dubai/, Mapping = tex-text]{Dubai-Medium.ttf}
\fontsize{13pt}{15pt}\selectfont #3}
\vspace{3pt}
}

% Section separators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{
\color{headings}\scshape\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Bold.ttf}\fontsize{16pt}{24pt}\selectfont\uppercase}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{14pt}{16pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{14pt}{16pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Subsubheadings command
\titleformat{\subsubsection}{
\color{subheadings}\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{11pt}{14pt}\selectfont\bfseries}{}{0em}{}

\newcommand{\runsubsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{11pt}{14pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\noindent\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{11pt}{13pt}\selectfont {#1 \\ } \normalfont}

% Emphasize text in left column
\newcommand{\emphtext}[1]{
\color{primary}\noindent\fontspec[Path = fonts/sanfrancisco/, Mapping = text-text]{SFProText-RegularItalic.ttf}\fontsize{9pt}{11pt}\selectfont {#1}\normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\noindent\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{10pt}{12pt}\selectfont {#1\\ } \normalfont}

\newcommand{\runlocation}[1]{
\color{headings}\noindent\fontspec[Path = fonts/sanfrancisco/, Mapping = tex-text]{SFProText-Medium.ttf}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
  {\end{itemize}\vspace{-\topsep}}
