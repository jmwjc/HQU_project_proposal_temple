\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hqu-proposal}[2026/07/20 v1.0 HQU Project Proposal Template]

% 基于 ctexart，A4 纸，小四号正文，支持中文，启用 CJK 伪粗体
\LoadClass[UTF8,a4paper,12pt,AutoFakeBold=true]{ctexart}

% ================== 页面设置 ==================
\RequirePackage{geometry}
\geometry{
    left=2.5cm, right=2.5cm,
    top=2.8cm, bottom=2.5cm,
    headheight=15pt, headsep=0.8cm,
    footskip=1cm
}

% ================== 必要宏包 ==================
\RequirePackage{graphicx}      % 插图
\RequirePackage{xcolor}        % 颜色
\RequirePackage{amsmath,amssymb} % 数学
\RequirePackage{booktabs}      % 三线表
\RequirePackage{longtable}     % 跨页表格
\RequirePackage{array}         % 表格增强
\RequirePackage{multirow}       % 表格合并
\RequirePackage{enumitem}       % 列表定制
\RequirePackage{setspace}       % 行距
\RequirePackage{titlesec}      % 标题样式
\RequirePackage{fancyhdr}       % 页眉页脚
\RequirePackage{lastpage}       % 总页数
\RequirePackage{tocloft}        % 目录样式
\RequirePackage{hyperref}       % 超链接
\RequirePackage{caption}        % 图表标题
\RequirePackage{subcaption}     % 子图

% ================== 超链接设置 ==================
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=blue,
    pdfproducer={HQU Project Proposal Template}
}

% ================== 颜色定义 ==================
\definecolor{HQUBlue}{RGB}{0, 51, 102}   % 华侨大学蓝（示例）
\definecolor{HQUReD}{RGB}{139, 0, 0}      % 深红，备用

% ================== 字体与行距 ==================
% 本模板不强制指定字体，交由 ctex 根据操作系统自动选择。
% 若需统一跨平台字体，可取消下面注释并确保相应字体已安装：
% \setCJKmainfont{Noto Serif CJK SC}[AutoFakeBold=true,AutoFakeSlant=true]
% \setCJKsansfont{Noto Sans CJK SC}[AutoFakeBold=true]
% \setmainfont{Times New Roman}
% \setsansfont{Arial}

\setstretch{1.5}    % 1.5 倍行距

% ================== 标题样式 ==================
% 一级标题：黑体，三号，居中
\ctexset{
    section = {
        format = \zihao{3}\heiti\bfseries\centering,
        beforeskip = 1.5ex plus 0.5ex minus 0.2ex,
        afterskip = 1.5ex plus 0.5ex minus 0.2ex,
    },
    subsection = {
        format = \zihao{4}\heiti\bfseries,
        beforeskip = 1ex plus 0.3ex minus 0.1ex,
        afterskip = 1ex plus 0.3ex minus 0.1ex,
    },
    subsubsection = {
        format = \zihao{-4}\heiti\bfseries,
        beforeskip = 0.8ex plus 0.2ex,
        afterskip = 0.8ex plus 0.2ex,
    }
}

% ================== 图表标题样式 ==================
\captionsetup{
    font=small,
    labelsep=space,
    skip=10pt,
    figurename={图},
    tablename={表}
}

% ================== 页眉页脚 ==================
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\small 华侨大学项目建议书}
\fancyfoot[C]{\small 第 \thepage\ 页\quad 共 \pageref{LastPage} 页}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}

% 目录页样式
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[C]{\small 华侨大学项目建议书}
    \fancyfoot[C]{\small 第 \thepage\ 页\quad 共 \pageref{LastPage} 页}
}

% ================== 封面页命令 ==================
\newcommand{\projectname}[1]{\def\@projectname{#1}}
\newcommand{\applicant}[1]{\def\@applicant{#1}}
\newcommand{\college}[1]{\def\@college{#1}}
\newcommand{\major}[1]{\def\@major{#1}}
\newcommand{\contact}[1]{\def\@contact{#1}}
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\applydate}[1]{\def\@applydate{#1}}
\newcommand{\projecttype}[1]{\def\@projecttype{#1}}
\newcommand{\logoleft}[1]{\def\@logoleft{#1}}
\newcommand{\logoright}[1]{\def\@logoright{#1}}

\projectname{}
\applicant{}
\college{}
\major{}
\contact{}
\advisor{}
\applydate{}
\projecttype{}
\logoleft{}
\logoright{}

\newcommand{\makecover}{
    \begin{titlepage}
        \begin{center}
            \vspace*{0.5cm}

            % 校徽（双 logo 并排）
            \ifdefined\@logoleft
                \includegraphics[height=2.8cm]{\@logoleft}%
            \fi
            \hspace{1.5cm}
            \ifdefined\@logoright
                \includegraphics[height=2.8cm]{\@logoright}%
            \fi

            \vspace{0.8cm}

            % {\fontsize{36pt}{40pt}\selectfont\heiti\bfseries\color{HQUBlue} 华侨大学}

            \vspace{0.5cm}

            {\fontsize{22pt}{26pt}\selectfont\heiti\bfseries 项目建议书}

            \vspace{2.5cm}

            \ifx\@projectname\empty\else
                {\zihao{2}\heiti\bfseries\@projectname}

                \vspace{1.2cm}
            \fi

            \renewcommand{\arraystretch}{2.0}
            \begin{tabular}{>{\zihao{-3}\heiti}c}
                \@applicant \\
                \@contact \\
                \@college \\
                \@applydate \\
            \end{tabular}

            \vfill

            % {\zihao{4}\songti 华侨大学教务处 / 科研处}

            \vspace{0.5cm}
        \end{center}
    \end{titlepage}
}

\endinput
