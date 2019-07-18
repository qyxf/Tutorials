%%
%% This is file `qyxf-note.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% qyxf.dtx  (with options: `note')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2019 by xjtu-blacksmith
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is xjtu-blacksmith.
%% 
%% -----------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qyxf-note}[2019/05/11 v2.1 Template for qyxf's note]
\LoadClass[12pt,oneside]{article}
\newif\if@color
\newif\if@screen
\newif\if@opensource
\newif\if@publishpage
\newif\if@sourcefont
\DeclareOption{mobile}{
  \setlength\paperwidth{4in}
  \setlength\paperheight{6in}
  \@screentrue}
\DeclareOption{pc}{
  \setlength\paperwidth{8in}
  \setlength\paperheight{6in}
  \@screentrue}
\DeclareOption{a5paper}{
  \setlength\paperwidth{148mm}
  \setlength\paperheight{210mm}
  \@screenfalse}
\DeclareOption{color}{\@colortrue}
\DeclareOption{nocolor}{\@colorfalse}
\DeclareOption{opensource}{\@opensourcetrue}
\DeclareOption{publishpage}{\@publishpagetrue}
\DeclareOption{nopublishpage}{\@publishpagefalse}
\DeclareOption{sourcefont}{\@sourcefonttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{a5paper,color,publishpage}
\ProcessOptions\relax
\RequirePackage{geometry}
\if@screen
  \geometry{margin=10pt}
\else
  \geometry{margin=0.5in}
\fi
\setlength{\headheight}{15pt}
\RequirePackage{xcolor}
\if@color
  \definecolor{mycolor}{RGB}{20,130,20}
\else
  \definecolor{mycolor}{RGB}{0,0,0}
\fi
\if@sourcefont
  \RequirePackage[SlantFont]{xeCJK}
  \RequirePackage{ctex}
  \setCJKmainfont{思源宋体}
  \setCJKsansfont{思源黑体}
\else
  \RequirePackage{ctex}
\fi\RequirePackage{amsmath,fourier}
\RequirePackage{graphicx,booktabs,longtable}
\graphicspath{{images/}}
\RequirePackage{hyperref,fancyhdr}
\hypersetup{
  breaklinks,
  unicode,
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdfborder={0 0 0},
  linktocpage,
  pageanchor=true}
\renewcommand{\thefootnote}{\textbf{(\arabic{footnote})}}
\fancyhf{}
\pagestyle{fancy}
\fancyhead[C]{\textcolor{mycolor}{\fangsong 钱学森书院学业辅导中心}}
\fancyfoot[C]{\textcolor{mycolor}{\thepage}}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{1pt}%
  \fancyhead[C]{\footnotesize \textcolor{mycolor}{\fangsong 钱学森书院学业辅导中心}}
  \fancyfoot[C]{\footnotesize \textcolor{mycolor}{\thepage}}%
}
\if@color
  \RequirePackage{sectsty}
  \allsectionsfont{\color{mycolor}}
\fi
\RequirePackage{tikz,tcolorbox}
\usetikzlibrary{shadows}
\RequirePackage{ccicons}
\RequirePackage[shortlabels]{enumitem}
\setlist{nolistsep}
\newcommand*{\eBall}{\tikz \draw [baseline, ball color=mycolor, draw=mycolor] circle (2pt);}
\newcommand*{\eShadow}{\tikz \draw [baseline, fill=mycolor,draw=mycolor,%
circular drop shadow] circle (2pt);}
\setlist[enumerate,1]{label=\color{mycolor}(\arabic*),font=\bfseries}
\setlist[enumerate,2]{label=\color{mycolor}(\Roman*),font=\bfseries}
\setlist[enumerate,3]{label=\color{mycolor}(\Alph*),font=\bfseries}
\setlist[enumerate,4]{label=\color{mycolor}(\roman*),font=\bfseries}
\setlist[itemize,1]{label={\eBall}}
\setlist[itemize,2]{label={\eShadow}}
\newtoks\subtitle
\newtoks\typo
\newtoks\version
\newtoks\sourcepage
\newcommand{\exercise}[1]{\noindent\tcbox[on line,top=0mm,bottom=0mm,right=0mm,%
left=0mm,colframe=mycolor!90!white,colback=mycolor!5!white]{\bfseries 练习#1}\ }
\newcommand{\note}{\noindent\textbf{注记}\ }
\newcommand{\solve}{\noindent\textbf{解}\ }
\newcommand{\analysis}{\noindent\textbf{分析}\ }
\renewcommand*{\maketitle}{
\hypersetup{
  pageanchor=false,
  pdfauthor=\@author,
  pdftitle=\@title,
  pdfsubject={\@author: \@title - \the\subtitle},
  pdfkeywords={qyxf,note},
  pdfcreator={XeLaTeX with qyxf-note class}
}

  \if@publishpage
    \setcounter{page}{0}
    \hspace{1em}\vfill
    \begin{tcolorbox}[title=出品说明,fonttitle=\bfseries,%
    colbacktitle=mycolor!80!white,colframe=mycolor!90!white,colback=mycolor!5!white]
      \textbf{标题：}\@title\par
      \textbf{作者：}\@author\par
      \textbf{日期：}\@date\par
      \textbf{出品：}钱院学辅
      \end{tcolorbox}
    \begin{tcolorbox}[title=许可证说明,fonttitle=\bfseries,%
    colbacktitle=mycolor!80!white,colframe=mycolor!90!white,colback=mycolor!5!white]
    本作品采用\textbf{知识共享 (Creative Commons) BY-NC-ND 4.0 协议}%
    \href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{\tcbox[on line,%
    colframe=mycolor!90!white,colback=mycolor!5!white,left=0pt,right=0pt,top=0pt,%
    bottom=0pt]{\ccbyncnd}}进行许可。使用者可以在给出作者署名及资料来源的前提下对本作品进行转载，
    但不得对本作品进行修改，亦不得基于本作品进行二次创作，不得将本作品运用于商业用途。
    \end{tcolorbox}
    \if@opensource
      \begin{tcolorbox}[colframe=mycolor!90!white,colback=mycolor!5!white]
      本作品已发布于GitHub之上，发布地址为\the\sourcepage .本作品的版本号为%
      \textsf{\the\version}。
      \end{tcolorbox}
    \fi
    \vfill
    \newpage
  \fi
  \begin{center}
  {\color{mycolor}\Huge\bfseries\@title}\\[0.5\baselineskip]
  {\Large\fangsong\@author}\\[0.5\baselineskip]
  {\Large\@date}
  \end{center}
  \vspace{\baselineskip}
}

\endinput
%%
%% End of file `qyxf-note.cls'.
