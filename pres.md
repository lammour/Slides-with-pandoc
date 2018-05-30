---
title:  'A Beamer presentation using Pandoc'
subtitle: 'Keeping it simple'

author: Luis Ammour \inst{1} \and Another Author \inst{2}
institute: \inst{1} Univ. Paris-Sud \and \inst{2} International Institutes of \LaTeX

theme: default
colortheme: seahorse
themeoptions:
---

# Writing a slides presentation with as least effort as reasonably achievable

##  Markdown

### For the structure

\note{This is a note!}

Markdown titles (\textit{i.e.} `#`, `##` and `###`) are used for structuring the document.

`#` are used for chapters titles, creating a slide with the title only.

`##` titles are the way to create a new slide

`###` are subtitles inside a slide, or blocks, depending of your theme.

`---` is a pagebreak, it creates a new slide without header.

### For tables

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

## Markdown 2

### For the text formatting

You can use pandoc markdown in order to format the content :

- `-`: lists
  - and nested lists
- `*emphasis*`: *emphasis*
- `**double emphasis**`: **double emphasis**
- \texttt{`monospace font`}: `monospace font`

### Citations

> Like this one

### And code blocks

``` python
def fun(a: int) -> None:
  if a >= 12:
    print("a is {}".format(a))
  else:
    print("a is less than 12")
  return
```

## Latex

\LaTeX\ commands are allowed

### For maths

$You_{can} \sum^{add}_{some} \frac{Mathematical}{equations} \rightarrow !$

### Blocks !

\begin{exampleblock}{Example block}
Example text
\end{exampleblock}

### etc.

# Images

## You can put images

### Markdown

``` markdown
![A sample image](lena.png){width=30%}
```

### Result

![A sample image](lena.png){width=30%}
