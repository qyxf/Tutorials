\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qyxfnote}[2018/01/06 ElegantNote v2.00 class]
\LoadClass[12pt,final]{article}

\RequirePackage{kvoptions}
\RequirePackage{ifthen}
\RequirePackage{ifxetex}
\RequirePackage{etoolbox}
\RequirePackage{calc}
\RequirePackage{tikz}
\RequirePackage{mdframed}
\AtEndOfClass{\RequirePackage{microtype}}


\SetupKeyvalOptions{family=ELEGANT, prefix=ELEGANT@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{ELEGANT}{#1}}

% ----- Colors -----
\DeclareStringOption[green]{color}
\DeclareStringOption[pad]{device}
\DeclareStringOption[cn]{lang}
\DeclareStringOption{mode}
% ----- backward compatibility
\DeclareVoidOption{green}{\ekv{color = green}}
\DeclareVoidOption{cyan}{\ekv{color = cyan}}
\DeclareVoidOption{blue}{\ekv{color = blue}}
\DeclareVoidOption{sakura}{\ekv{color = sakura}}
\DeclareVoidOption{black}{\ekv{color = black}}

\DeclareVoidOption{pc}{\ekv{device = pc}}
\DeclareVoidOption{pad}{\ekv{device = pad}}
\DeclareVoidOption{phone}{\ekv{device = phone}}
\DeclareVoidOption{normal}{\ekv{device = normal}}

\DeclareVoidOption{cn}{\ekv{lang = cn}}
\DeclareVoidOption{en}{\ekv{lang = en}}

\DeclareVoidOption{geye}{\ekv{mode = geye}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%\ExecuteOptions{12pt}
\ProcessKeyvalOptions*\relax
\ProcessOptions*



% fontsetting
\RequirePackage{ifxetex}
\ifxetex
	\RequirePackage{fontenc}
	\RequirePackage[no-math]{fontspec}
	\setmainfont{Times New Roman}[NFSSFamily=ntxtlf]
	\setsansfont{Arial}
	%\setmonofont[Scale=0.9]{Courier New}
	\RequirePackage{xeCJK}
	\RequirePackage{xunicode}
	\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
	\setCJKsansfont[BoldFont={SimHei},ItalicFont={KaiTi}]{KaiTi}
	\setCJKmonofont[BoldFont={SimHei},ItalicFont={KaiTi},Scale=0.9]{Microsoft YaHei}
	\XeTeXlinebreaklocale "zh"
	\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
	\RequirePackage{newtxmath}
	%\DeclareSymbolFont{operators}{OT1}{ntxtlf}{m}{n}
	%\SetSymbolFont{operators}{bold}{OT1}{ntxtlf}{b}{n}
	\setCJKfamilyfont{zhsong}{SimSun}
	\setCJKfamilyfont{zhhei}{SimHei}
	\setCJKfamilyfont{zhkai}{KaiTi}
	\setCJKfamilyfont{zhfs}{FangSong}
	\newcommand*{\songti}{\CJKfamily{zhsong}} 
	\newcommand*{\heiti}{\CJKfamily{zhhei}}   
	\newcommand*{\kaishu}{\CJKfamily{zhkai}} 
	\newcommand*{\fangsong}{\CJKfamily{zhfs}} 
\else
	\RequirePackage{fontenc}
	\RequirePackage{newtxtext}
	\RequirePackage{newtxmath}
	\RequirePackage[UTF8, scheme=plain]{ctex}
\fi
\RequirePackage[scale=0.8]{FiraMono}

% 常用宏包
\RequirePackage{indentfirst}
\RequirePackage{anyfontsize}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\let\openbox\relax
\RequirePackage{amsthm}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{xpatch}
\definecolor{winered}{rgb}{0.5,0,0}

\hypersetup{%
    pdfborder = {0 0 0},
    colorlinks,
    citecolor=ecolor,
    filecolor=ecolor,
    linkcolor=ecolor,
    urlcolor=ecolor
}
% 行距设置
\linespread{1.3}
\setlength{\parskip}{3mm}
\setlength{\parindent}{2em}
% 定义护眼模式 geye = true
\RequirePackage{xcolor}

% good for eye color 
\ifdefstring{\ELEGANT@mode}{geye}{
  \definecolor{geyecolor}{RGB}{199,237,204}%
  \pagecolor{geyecolor}
}{\relax}

% graphics path
\graphicspath{{./figure/}{./figures/}{./image/}{./images/}{./graphics/}{./graphic/}{./pictures/}{./picture/}}

\let\openbox\relax
\newtheoremstyle{plain}{3pt}{3pt}{\itshape}{}{\color{ecolor}\bfseries}{}{0.5em}{\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}
\newtheoremstyle{definition}{3pt}{3pt}{\itshape}{}{\color{ecolor}\bfseries}{}{0.5em}{}
\newtheoremstyle{remark}{3pt}{3pt}{\itshape}{}{\color{ecolor}\bfseries}{}{0.5em}{}


% caption settings 
\RequirePackage[font=small,labelfont={bf,color=ecolor}]{caption} 
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=3pt}

% list/itemize/enumerate setting
\RequirePackage[shortlabels]{enumitem}
\setlist{nolistsep}

%% device settings
%% default = pad
\ifdefstring{\ELEGANT@device}{pc}{
	\RequirePackage[margin=8mm, paperwidth=6.2in, paperheight=6in,includefoot]{geometry}
}{\relax}
\ifdefstring{\ELEGANT@device}{pad}{
	\RequirePackage[margin=8mm, paperwidth=6in, paperheight=8in,includefoot]{geometry}
	%197mm*148mm
}{\relax}
\ifdefstring{\ELEGANT@device}{phone}{
	\RequirePackage[margin=8mm, paperwidth=3.68in, paperheight=4.92in]{geometry}
	% 160mm*115mm
}{\relax}
\ifdefstring{\ELEGANT@device}{normal}{
	\RequirePackage[margin=1in, a4paper]{geometry}
}{\relax}

% headings
\RequirePackage{fancyhdr}
\fancyhf{}
\pagestyle{fancy}
\fancyhead[C]{\footnotesize \textcolor{ecolor}{\fangsong 钱学森书院学业辅导中心}}
\fancyfoot[C]{\footnotesize \textcolor{ecolor}{\thepage}}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}

\fancypagestyle{plain}{%

  \fancyhf{}%
  \renewcommand{\headrulewidth}{1pt}%
  \fancyhead[C]{\footnotesize \textcolor{ecolor}{\fangsong 钱学森书院学业辅导中心}}
  \fancyfoot[C]{\footnotesize \textcolor{ecolor}{\thepage}}%
}


% bib-settings
\RequirePackage{natbib}
\setlength{\bibsep}{0.0pt}
\def\bibfont{\footnotesize}

\RequirePackage{sectsty}

\ifdefstring{\ELEGANT@color}{green}{
  	\definecolor{ecolor}{RGB}{0,120,2}%
}{\relax}
\ifdefstring{\ELEGANT@color}{cyan}{
  \definecolor{ecolor}{RGB}{0,175,152}%
}{\relax}
\ifdefstring{\ELEGANT@color}{blue}{
  \definecolor{ecolor}{RGB}{20,50,104}%
}{\relax}
\ifdefstring{\ELEGANT@color}{sakura}{
  \definecolor{ecolor}{RGB}{255,183,197}%
}{\relax}
\ifdefstring{\ELEGANT@color}{black}{
  \definecolor{ecolor}{RGB}{0,0,0}%
}{\relax}

\definecolor{egreen}{RGB}{0,120,2}
\definecolor{ecyan}{RGB}{0,175,152}
\definecolor{eblue}{RGB}{20,50,104}
\definecolor{sakura}{RGB}{255,183,197}
% \definecolor{black}{RGB}{255,183,197}

\allsectionsfont{\color{ecolor}}
%\sectionfont{\color{ecolor}}
%\subsectionfont{\color{ecolor}}

\ifdefstring{\ELEGANT@lang}{cn}{
  \theoremstyle{plain}% default
	\newtheorem{theorem}{定理}[section] %
	\newtheorem{lemma}[theorem]{引理} %
	\newtheorem{proposition}[theorem]{性质} %
	\newtheorem*{corollary}{推论} %
	\theoremstyle{definition} %
	\newtheorem{definition}{定义}[section] %
	\newtheorem{conjecture}{猜想}[section] %
	\newtheorem{example}{例}[section] %
	\theoremstyle{remark} %
	\newtheorem*{remark}{\normalfont\bfseries 评论} %
	\newtheorem*{note}{\normalfont\bfseries 注} %
	\newtheorem{case}{\normalfont\bfseries 案例} %
	\renewcommand*{\proofname}{\normalfont\bfseries\color{ecolor}证明} %
	\renewcommand\contentsname{\color{ecolor}目录}
	\renewcommand\refname{\color{ecolor}参考文献} %
	\renewcommand\figurename{图} %
	\renewcommand\tablename{表}
	\newcommand\versiontext{版本：}%
	\newcommand\updatetext{更新：}%
	\setlength{\parindent}{2em}
  	\newcommand{\keywords}[1]{\vskip2ex\par\noindent\normalfont{\bfseries 关键词: } #1}
  
}{\relax}
\ifdefstring{\ELEGANT@lang}{en}{
  \theoremstyle{plain}% default
	\newtheorem{theorem}{Theorem}[section] %
	\newtheorem{lemma}[theorem]{Lemma} %
	\newtheorem{proposition}[theorem]{Proposition} %
	\newtheorem*{corollary}{Corollary} %
	\theoremstyle{definition} %
	\newtheorem{definition}{Definition}[section] %
	\newtheorem{conjecture}{Conjecture}[section] %
	\newtheorem{example}{Example}[section] %
	\theoremstyle{remark} %
	\newtheorem*{remark}{Remark} %
	\newtheorem*{note}{Note} %
	\newtheorem{case}{Case} 
	\renewcommand*{\proofname}{\normalfont\bfseries\color{ecolor}Proof}
	\newcommand\versiontext{Version: }%
	\newcommand\updatetext{Update: }%
}{\relax}

\newtoks\version
\newtoks\institute

% 封面
\newcommand*{\equote}[1]{\def\@equote{#1}}

\newcommand*{\logo}[1]{
	\def\@logo{\includegraphics[width=0.3\textwidth]{#1}
	}
}

\newcommand*{\cover}[1]{
	\def\@logo{\includegraphics[width=\linewidth]{./templete/cover.png}
	}
}

\renewcommand*{\maketitle}{
	\hypersetup{pageanchor=false}
	\begin{titlepage}
		%\hrule
		\phantom{s}

		\vspace{3cm}
		\begin{center}\large
			\begin{mdframed}[linecolor=blue,linewidth=2pt,%
				leftmargin=0.5cm,rightmargin=0cm,topline=false,rightline=%
				false,bottomline=false]
				{\fontsize{40pt}{\baselineskip}\selectfont\itshape \@title}
			\end{mdframed}
			\begin{mdframed}[linecolor=black,linewidth=2pt,%
				leftmargin=0.5cm,rightmargin=0cm,topline=false,rightline=%
				false,bottomline=false]
				{\Large 作者：\@author\\[0.3\baselineskip]
					\@date}
			\end{mdframed}
			\vfill
			\texttt{钱学森书院学业辅导中心}\\[0.5\baselineskip]
			\textsc{Qian Yuan Xue Fu}\\[0.5\baselineskip]
			\includegraphics[width=0.5\textwidth]{./templete/name.png}
		\end{center}
		
	\end{titlepage}
	\newpage
	
}

\usetikzlibrary{shadows}
\newcommand*{\eBall}{\tikz \draw [baseline, ball color=ecolor, draw=ecolor] circle (2pt);}
\newcommand*{\eShadow}{\tikz \draw [baseline, fill=ecolor,draw=ecolor,circular drop shadow] circle (2pt);}
\setlist[enumerate,1]{label=\color{ecolor}(\arabic*).}
\setlist[enumerate,2]{label=\color{ecolor}(\Roman*).}
\setlist[enumerate,3]{label=\color{ecolor}(\Alph*).}
\setlist[enumerate,4]{label=\color{ecolor}(\roman*).}
\setlist[itemize,1]{label={\eBall}}
\setlist[itemize,2]{label={\eShadow}}
%source1: https://tex.stackexchange.com/questions/41408/a-five-level-deep-list
%source2: https://tex.stackexchange.com/questions/318199/change-color-of-itemize-bullet 

\DeclareSymbolFont{cmlargesymbols}{OMX}{cmex}{m}{n}
\DeclareMathSymbol{\intop}{\mathop}{cmlargesymbols}{"5A}
  \def\int{\intop\nolimits}
\DeclareMathSymbol{\ointop}{\mathop}{cmlargesymbols}{"49}
  \def\oint{\ointop\nolimits}
\DeclareMathSymbol{\sumop}{\mathop}{cmlargesymbols}{"58}
  \let\sum\sumop
\DeclareMathSymbol{\prodop}{\mathop}{cmlargesymbols}{"59}
  \let\prod\prodop


\RequirePackage{listings} 
\definecolor{lightgrey}{rgb}{0.9,0.9,0.9}
\definecolor{frenchplum}{RGB}{190,20,83}
\lstset{language=[LaTeX]TeX,
	texcsstyle=*\bf\color{winered}\ttfamily,
	basicstyle=\footnotesize\ttfamily,
	numbers=none,
	breaklines=true,
	keywordstyle=\bf\color{winered}\ttfamily,
	commentstyle=\color{gray},
	emph={elegantpaper,fontenc,fontspec,xeCJK,FiraMono,xunicode,newtxmath,figure,fig,image,img,table,itemize,enumerate,newtxtext,newtxtt,ctex,microtype,description,times,newtx,booktabs,tabular,PDFLaTeX,XeLaTeX,type1cm,BibTeX,device,color,mode,lang,amsthm},
	emphstyle={\color{frenchplum}},
	morekeywords={DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule,institute,version,includegraphics,setmainfont,setsansfont,setmonofont ,setCJKmainfont,setCJKsansfont,setCJKmonofont,RequirePackage,figref,tabref,email,maketitle,keywords},
	frame=none,
	tabsize=2,
	rulecolor=\color{ecolor},
}

