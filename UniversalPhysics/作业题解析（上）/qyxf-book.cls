%%
%% This is file `qyxf-book.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% qyxf.dtx  (with options: `book')
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
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{qyxf-book}
  [2019/05/26 v2.1 Template for qyxf's book]
\typeout{The book template provided by Qian Yuan Xue Fu}
\LoadClass[10pt,twoside,openany]{book}
\newif\if@decoration
\newif\if@opensource
\newif\if@sourcefont
\DeclareOption{a4paper}{
  \setlength\paperheight{297mm}%
  \setlength\paperwidth{210mm}}
\DeclareOption{b5paper}{
  \setlength\paperheight{250mm}%
  \setlength\paperwidth{176mm}}
\DeclareOption{color}{}
\DeclareOption{parskip}{
  \setlength\parskip{0.2\baselineskip}}
\DeclareOption{decoration}{\@decorationtrue}
\DeclareOption{opensource}{\@opensourcetrue}
\DeclareOption{sourcefont}{\@sourcefonttrue}
\ProcessOptions
\if@sourcefont
  \RequirePackage[SlantFont]{xeCJK}
  \RequirePackage[heading]{ctex}
  \setCJKmainfont{思源宋体}
  \setCJKsansfont{思源黑体}
\else
  \RequirePackage[heading]{ctex}
\fi
\setmainfont{Cambria}       % 目前默认使用的serif字体
\setsansfont{Calibri}       % 目前默认使用的sans-serif字体
\setmonofont{Courier New}   % 目前默认使用的等宽字体
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\setmathfont{Cambria Math}  % 与正文字体相适应的数学字体
\renewcommand{\thefootnote}{\textbf{(\arabic{footnote})}}
\RequirePackage{graphicx}
\graphicspath{{./figure/}{./pic/}{./image}}
\setlength{\textfloatsep}{6pt plus 2pt minus 4pt}
\setlength{\intextsep}{6pt plus 2pt minus 2pt}
\RequirePackage{longtable,booktabs}
\RequirePackage{tikz}
\usetikzlibrary{calc,backgrounds}
\RequirePackage{tcolorbox,tabu}
\tcbuselibrary{listings,theorems,skins}
\newcommand{\exercise}[1]{\noindent\tcbox[on line,top=0mm,bottom=0mm,%
right=0mm,left=0mm]{\bfseries 练习#1}\ }
\newcommand{\note}{\noindent\textbf{注记}\ }
\newcommand{\solve}{\noindent\textbf{解}\ }
\newcommand{\analysis}{\noindent\textbf{分析}\ }
\RequirePackage{geometry}
\geometry{margin=1in}
\RequirePackage{hyperref}
\hypersetup{
  breaklinks,
  unicode,
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdfborder={0 0 0},
  linktocpage,
  pageanchor=true}
\RequirePackage{pgfornament-han}
\RequirePackage{pgfornament}
\ctexset{section={name={\S,}}}
\RequirePackage{titlesec,titletoc}
\newcommand{\decoration}{\vspace{-.3\baselineskip}\pgfornamenthan[scale=0.2,symmetry=h]{60}}
\titleformat{\chapter}[block]{\centering\bfseries\Huge}{\CTEXthechapter}
{1em}{}[\centering\decoration]%
\titlespacing{\chapter}{0pt}{*1}{*4}
\titlecontents{chapter}[24pt]{\hspace{-2pc}\filright}
              {\normalsize\bfseries\contentspush{\thecontentslabel\ }}
              {}{\bfseries\titlerule*[8pt]{.}\contentspage}
\titlecontents{section}[20pt]{\filright}
              {\contentspush{\thecontentslabel\ }}
              {}{\titlerule*[8pt]{.}\contentspage}
\titlecontents{subsection}[18pt]{\hspace{2pc}\filright}
              {\contentspush{\thecontentslabel\ }\itshape}
              {}{\titlerule*[8pt]{}\contentspage}
\setcounter{tocdepth}{2}
\RequirePackage{fancyhdr}
\fancyhead[EC]{\fangsong\nouppercase\leftmark}
\fancyhead[OC]{\fangsong\nouppercase\rightmark}
\fancyhead[EL,OR]{\bf\thepage}
\fancyhead[ER,OL]{}
\fancyfoot[C]{\textsc{Qian Yuan Xue Fu}\\\resizebox{0.2\linewidth}{1.5ex}{%
\pgfornamenthan[scale=0.05]{58}}}
\fancypagestyle{plain}{%
\fancyhf{}
\fancyfoot[C]{\textsc{Qian Yuan Xue Fu}\\\resizebox{0.2\linewidth}{1.5ex}{%
\pgfornamenthan[scale=0.05]{58}}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\setlength{\headheight}{13pt}
\RequirePackage{lastpage}
\RequirePackage{enumerate}
\RequirePackage{pifont}
\RequirePackage{appendix}
\ctexset{appendix={number={\Roman{chapter}}}}
\RequirePackage[scale=1.1]{ccicons}
\newtoks\subtitle
\newtoks\typo
\newtoks\version
\newtoks\sourcepage
\renewcommand*{\maketitle}{%
\hypersetup{
  pageanchor=false,
  pdfauthor=\@author,
  pdftitle=\@title,
  pdfsubject={\@author: \@title - \the\subtitle},
  pdfkeywords={qyxf, book},
  pdfcreator={XeLaTeX with qyxf-book class}
}
\begin{titlepage}
\phantom{s}
\vspace{3cm}
\begin{center}\large
\begin{tcolorbox}[blanker,borderline west={1mm}{0pt}{black!80},%
left=20pt]
{\fontsize{40pt}{\baselineskip}\selectfont\bfseries\@title}\\[0.5\baselineskip]
{\huge\itshape\the\subtitle}
\end{tcolorbox}
\begin{tcolorbox}[blanker,borderline west={1mm}{0pt}{black!50},%
left=20pt]
{\Large 作者：\@author\\[0.2\baselineskip]
\@date}
\end{tcolorbox}
\vfill
\texttt{钱学森书院学业辅导中心}\\[0.5\baselineskip]
\textsc{Qian Yuan Xue Fu}\\[0.5\baselineskip]
{XI'AN JIAOTONG UNIVERSITY}
\end{center}
\begin{tikzpicture}[remember picture,overlay]
  \begin{pgfonlayer}{background}
  \node at ($(current page.east) +(0in,0in)$) {%
  \includegraphics[width=0.8\textwidth]{cover.png}};
  \end{pgfonlayer}
\end{tikzpicture}
\end{titlepage}
\thispagestyle{empty}
\newpage
\hypersetup{pageanchor=true}
\phantom{s}\vfill
\begin{tcolorbox}[title={\bfseries 作品信息}]
\ding{228} \textbf{标题：}\@title{} - \textit{\the\subtitle}\\
\ding{228} \textbf{作者：}\@author\\
\ding{228} \textbf{校对排版：}\the\typo\\
\ding{228} \textbf{出品时间：}\@date\\
\ding{228} \textbf{总页数：}\pageref{LastPage}
\end{tcolorbox}
\begin{tcolorbox}[title={\bfseries 许可证说明}]
\centerline{\tcbox{\ccbyncnd\ \fangsong 知识共享 (Creative Commons) BY-NC-ND 4.0 协议}%
\\[0.3\baselineskip]}
本作品采用 \href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{\textbf{CC协议}}
进行许可。使用者可以在给出作者署名及资料来源的前提下对本作品进行转载，但不得对本作品进行
修改，亦不得基于本作品进行二次创作，不得将本作品运用于商业用途。
\end{tcolorbox}
\if@opensource
  \begin{tcolorbox}
  本作品已发布于GitHub之上，发布地址为：\\
  \centerline{\the\sourcepage}
  本作品的版本号为\textsf{\the\version}。
  \end{tcolorbox}
\fi
\newpage
\pagestyle{fancy}
}
\renewcommand\tableofcontents{%
\pagestyle{empty}
\centerline{%
\normalfont\LARGE\bfseries\contentsname%
\@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}
}
\vskip 3ex%
{\setlength\parskip{0pt}\@starttoc{toc}}
\cleardoublepage
\pagestyle{fancy}
\setcounter{page}{1}
}

\endinput
%%
%% End of file `qyxf-book.cls'.
