\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{latexsym}[2023/02/09 Standard LaTeX class]

% declare arguments
% \newcommand{\headlinecolor}{\normalcolor}
% \DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
% dont remove this line

\LoadClass[12pt,letterpaper,twocolumn]{article}
\RequirePackage{color}
% font family
\RequirePackage{tgtermes} % mathptmx
% update style for sections
\RequirePackage{titlesec}

\RequirePackage[fontsize=12pt]{fontsize}
%%% Declare Option
% \DeclareOption{a4paper}{%
%     \setlength{\paperheight}{297mm}%
%     \setlength{\paperwidth}{210mm}%
% }

% define colors
\definecolor{primary}{RGB}{54,54,54}
\definecolor{secondary}{RGB}{0,68,134}
\definecolor{tertiary}{RGB}{107,101,86}
\definecolor{gray10}{RGB}{148,149,153}
\definecolor{globaltextcolor}{RGB}{0,0,0}


% new commands
\newcommand{\institution}[1]{\gdef\@institution{#1}}%
\newcommand{\proposal}[1]{\gdef\@proposal{#1}}%

% select font family



%%%%%% styles
% Title
\renewcommand{\maketitle}{%

\twocolumn[{%
    % line
    \noindent\makebox[\linewidth]{\color{secondary}\rule{\linewidth}{2pt}}\\[1pt]
    \noindent\fontsize{14}{16}\fontfamily{qhv}\selectfont
    % project type (proposal)
    \textcolor{tertiary}{\fontsize{11}{16}\fontseries{b}\fontfamily{qhv}\selectfont\@proposal} 
    %\\[-4pt]%
    \hfill %
    \textcolor{primary}{\fontsize{11}{16}\fontfamily{qhv}\selectfont%
        Date: \@date} \\%
    %%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%

    {
        % title
        \noindent\color{primary}\raggedright
        \fontsize{22}{28}\fontfamily{qcs}\selectfont\@title\\[10pt]%
    }

    \noindent
    \parbox{0.85\linewidth}{%
        \begin{flushleft}
        \color{primary}%
        \fontsize{12}{16}\selectfont\@author
        \end{flushleft}
    }
    $\cdot$
    %\textcolor{tertiary}{\@date}
    %\\[8pt]
}]
\begin{flushleft}
    \fontsize{10}{0}\selectfont%
    \@institution
\end{flushleft}
}


% update section style
\titleformat{\section}[hang]{\color{primary}\Large\bfseries}{}{0pt}{\Large\bfseries}
\titleformat{\subsection}[hang]{\color{secondary}\large\bfseries}{}{0pt}{\large\bfseries}
\titleformat{\subsubsection}[hang]{\color{tertiary}\itshape}{}{0pt}{\large\itshape}
% uncomment to numerate sections
\titleformat{\section}[hang]{\color{primary}\Large\bfseries}{\thesection.}{8pt}{\Large\bfseries}
\titleformat{\subsection}[hang]{\color{secondary}\large\bfseries}{\thesubsection.}{4pt}{\large\bfseries}
\titleformat{\subsubsection}[hang]{\color{secondary}\normalsize\bfseries}{\thesubsubsection.}{4pt}{\normalsize\bfseries}

% \renewcommand{\section}{%
%     \@startsection
%     {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
%     {1ex plus .2ex}{\large\sffamily\slshape\headlinecolor}%
% }
% \setcounter{secnumdepth}{0}

\color{globaltextcolor}


% under line
% \RequirePackage{soul}


% headers and footers
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\addtolength{\headwidth}{1.4cm} % adjust header width  
\addtolength{\headwidth}{1.4cm}

\fancyhf{} % clear existing header/footer entries
% \fancyfoot[R]{Page \thepage \hspace{1pt} of \pageref{LastPage}}
% page numbering
\fancyfoot[C]{\color{primary}\fontsize{10}{16}\fontfamily{qhv}\selectfont%
\bfseries\MakeUppercase\thepage}
\fancyfoot[L]{\color{primary}\fontsize{10}{16}\fontfamily{qhv}\selectfont%
\bfseries \@proposal}
% remove header line
\renewcommand{\headrulewidth}{0pt}


\RequirePackage{setspace}
% line height
\setstretch{1.0}
% space between paragraphs
\setlength{\parskip}{0.3\baselineskip}
% \setstretch{1.3}

% hyper link colors
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
    citecolor = primary,
}

\RequirePackage{enumitem}
\setlist[itemize]{label=\textcolor{primary}{$\bullet$}}

% captions
\RequirePackage{subcaption}
\DeclareCaptionFormat{custom}
{%
    \centering
\small\color{globaltextcolor}{\textbf{#1#2}}{#3}
}
\captionsetup{format=custom}

% biblatex size

\proposal{%
bi-level.org
}
\institution{}

