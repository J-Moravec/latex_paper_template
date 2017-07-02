# Simple LaTeX paper template

This is simple template for papers in LaTeX. The look should be good enough with all the important parts included, while this class is loading the basic packages.

## Installation
Just copy or fork it

Get `latexmk` for smooth compilation (sample config file included).
* run `latexmk` to compile pdf
* run `latexmk -c` to clean autogenerated files (except PDF)

## Some advices:

* use `\FloatBarrier` to limit figures and tables
* use `\enquote{text}` for quoting
* use `\autoref{something}` to reference figures, tables, equations in main text
* use `\supref{something}` to reference those in supplementary materials
* for simple TODO in text, just `\TODO{text}`
* for notes and comments, use `\comment[color]{text}}` or define your own color macro with initials

* use `\citet{key}`, `\citep{key}` etc. to cite in main text
* use `\citetsup{key}`, `\citepsup{key}` etc. to cite in supplementary materials

## Preloaded packages:
* babel
* inputenc
* fontenc
* lmodern
* geometry
* amsmath
* amssymb
* graphicx
* xcolor
* caption
* subcaption
* rotating
* booktabs
* placein
* pdflscape
* listings
* setspace
* microtype
* natbib
* multibib
* cite
* hyperref
* csquotes
* authblk
* todonotes
* calc
