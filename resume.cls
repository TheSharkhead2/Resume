%----------------------------------------------------------------------------------------
%      CLASS CONFIGURATION
%----------------------------------------------------------------------------------------
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{ragged2e}
\RequirePackage{setspace}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/1/27 Resume Class v0.1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{extarticle} % Load the base class

%----------------------------------------------------------------------------------------
%      Document Configuration
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0mm} % no paragraph indent 

\usepackage[hidelinks]{hyperref} % hide link boxes 

\pagestyle{empty} % this apparently turns off headers and footers

\usepackage{moresize} 


%----------------------------------------------------------------------------------------
%      PAGE LAYOUT
%----------------------------------------------------------------------------------------

\pagenumbering{gobble} % remove page numbers

\usepackage{geometry} % adjust page dimensions and margins

\geometry{
    paper=a4paper, 
    top=1.5cm,
    bottom=1.5cm,
    left=1.5cm,
    right=1.5cm,
    % showframe,
}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters

\usepackage[default]{raleway}


\renewcommand*\familydefault{\sfdefault} % Force the sans-serif version of any font used

%----------------------------------------------------------------------------------------
%      SECTIONS
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[2]{ % take in name and then social stuff
    \parbox[c][][t]{0.35\textwidth}{\textcolor{black}{\HUGE{\textbf{#1}}}} % make name really big
    \parbox[c][][t]{0.64\textwidth}{\begin{flushright} % make social stuff flush right
         #2 
        \end{flushright}}
}

\newcommand{\sectiontitle}[1]{
    \vspace{0.1cm} % space above header 
    \textcolor{black}{\Large{\textbf{#1}}}\\ % header title
    \noindent\makebox[\textwidth]{\rule{\textwidth}{0.2pt}}
}

%----------------------------------------------------------------------------------------
%      EXPERIENCE LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable} % for multi-line table entries

% remove whitespace around table
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}

\setlength{\tabcolsep}{0pt} % remove whitespace between columns

% environment for holding list of experiences
\newenvironment{experiencelist}{
    \vspace{-0.05cm}
}{

}

% \newcommand{\experience}[4]{ % title, date, company, description
%     \parbox[t]{\textwidth}{
%         {\textbf{#1}} % experience title
%         \hfill % used to right align
%         {\scriptsize \textbf{\textcolor{black}{#3}}}\\ % company name
%         {\ssmall \textcolor{gray}{#2}} % date 
%         #4
%     }\\\\
% }

\newcommand{\experience}[4]{ % title, date, company, description
    \parbox[t]{\textwidth}{
        {\textbf{#3} - {\textcolor{darkgray}{\textbf{#1}}}} % experience title
        \hfill
        {\small \textcolor{gray}{#2}} % date 
        #4
    }\\\\
}
\newcommand{\experiencenocompany}[3]{ % title, date, description
    \parbox[t]{\textwidth}{
        {{{\textbf{#1}}}} % experience title
        \hfill
        {\small \textcolor{gray}{#2}} % date 
        #3
    }\\\\
}