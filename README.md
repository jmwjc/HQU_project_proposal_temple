# 华侨大学项目建议书 LaTeX 模板

这是一个用于撰写华侨大学项目建议书的 LaTeX 模板，包含封面页、目录、正文表格、图表及页眉页脚等常用元素。

## 文件结构

```
.
├── hqu-proposal.cls      % 文档类，定义版式、封面、页眉页脚等
├── main.tex              % 示例模板主文件
├── figures/
│   ├── logo1.pdf         % 封面左侧校徽
│   └── logo2.pdf         % 封面右侧校徽/标识
├── Makefile              % 编译脚本
└── README.md             % 本说明文件
```

## 编译方式

### 使用 Makefile（推荐）

```bash
make          # 编译生成 main.pdf
make clean    # 清理编译中间文件
make cleanall # 清理所有生成文件（包括 pdf）
```

### 手动编译

```bash
xelatex main.tex
xelatex main.tex    # 再次编译以生成完整目录和页眉页脚
```

## 字体说明

模板默认使用 Windows 系统字体：
- 中文宋体：`SimSun`
- 中文黑体：`SimHei`
- 英文/数字 Times New Roman

若系统没有这些字体，请修改 `hqu-proposal.cls` 中相应字体设置，例如换用开源的 `Noto Serif CJK SC`、`Noto Sans CJK SC` 等。

## 使用步骤

1. 将 `figures/logo1.pdf` 和 `figures/logo2.pdf` 替换为华侨大学相关校徽/标识。
2. 在 `main.tex` 中填写项目信息（`\projectname`、`\applicant` 等）。
3. 按需求修改各章节内容。
4. 运行 `make` 生成 PDF。

## 常用命令

```latex
\projectname{项目名称}
\projectnumber{项目编号}
\projecttype{项目类型}
\applicant{申请人}
\college{所在学院}
\major{专业}
\contact{联系方式}
\advisor{指导教师}
\applydate{申请日期}
\logoleft{figures/logo1.pdf}
\logoright{figures/logo2.pdf}
\makecover
```

## 注意事项

- 必须使用 XeLaTeX 编译。
- 若需双栏或书籍式版式，可将 `\LoadClass[UTF8,a4paper,12pt]{ctexart}` 改为 `ctexbook` 并相应调整 `geometry`。
- 表格中的 `\toprule`、 `\midrule`、 `\bottomrule` 来自 `booktabs` 宏包。
