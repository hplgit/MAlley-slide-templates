======= MAlley-slides-templates =======

This repository contains slide templates for Michael Alley's famous
*assertion-evidence* slide style design. This effective slide design
is described in the book "The Craft of Scientific Presentations: Critical Steps to Succeed and Critical Errors to Avoid": "http://www.amazon.com/Craft-Scientific-Presentations-Critical-Succeed/dp/1441982787/ref=sr_1_fkmr0_1?ie=UTF8&qid=1428766493&sr=8-1-fkmr0&keywords=the+cract+of+scientific+presentations", by Michael Alley, Springer, 2nd edition, 2013.

FIGURE: [doconce/fig-talk/Craft_of_Scientific_Presentations_2nd_cover_small, width=150]

!bquote
How to use? Simply copy the slide template for the slide format you want to use,
give the file a proper name, and fill in your own content.
!equote

===== Template contents =====

The slide templates contains styles for

  * title slide
  * mapping slide
  * the common assertion-evidence slide
  * summary slide

===== Slide formats =====

The slide template comes in several formats:

 * "PowerPoint": "https://github.com/hplgit/MAlley-slide-templates/tree/master/PowerPoint", "download to local viewing": "https://github.com/hplgit/MAlley-slide-templates/raw/master/PowerPoint/AE_presentation_template.ppt"
 * "LibreOffice": "https://github.com/hplgit/MAlley-slide-templates/tree/master/LibreOffice", "download for local viewing": "https://github.com/hplgit/MAlley-slide-templates/raw/master/LibreOffice/AE_presentation_template.odp"
 * "Google Presenter": "https://github.com/hplgit/MAlley-slide-templates/tree/master/Google%20Presenter", "download": "https://raw.githubusercontent.com/hplgit/MAlley-slide-templates/master/Google%20Presenter/AE_presentation_template.gslides"
 * "HTML5 reveal.js": "https://github.com/hplgit/MAlley-slide-templates/blob/master/html5/AE_presentation_template-reveal-white.html": "view": "http://hplgit.github.io/MAlley-slide-templates/html5/AE_presentation_template-reveal-white.html"
 * "HTML5 deck.js": "https://github.com/hplgit/MAlley-slide-templates/blob/master/html5/AE_presentation_template-deck-beige.html", "view": "http://hplgit.github.io/MAlley-slide-templates/html5/AE_presentation_template-deck-beige.html"
 * "LaTeX Beamer slides": "https://github.com/hplgit/MAlley-slide-templates/blob/master/beamer/AE_presentation_template-beamer.pdf", "view": "http://hplgit.github.io/MAlley-slide-templates/beamer/AE_presentation_template-beamer.pdf"
 * "Remark slides": "https://github.com/hplgit/MAlley-slide-templates/blob/master/html/AE_presentation_template-remark.html", "view": "http://hplgit.github.io/MAlley-slide-templates/html/AE_presentation_template-remark.html"
 * "Plain HTML slides, solarized colors": "https://github.com/hplgit/MAlley-slide-templates/blob/master/html/AE_presentation_template-solarized.html", "view": "http://hplgit.github.io/MAlley-slide-templates/html/AE_presentation_template-solarized.html"
 * "DocOnc slides": "https://github.com/hplgit/MAlley-slide-templates/blob/master/doconce/AE_presentation_template.do.txt", translates to HTML, Beamer, Remark as above

===== Brief description of formats =====

=== Interactive slide tools ===

Interactive slides tools offer a graphical user interface to design slides
in a visual way - you click and drag until you are satisfied. This is
user-friendly, and if slide elements are not perfectly postioned, it is easy
to graphically move them the way you want.

For slides with much mathematics and computer code, the support in interactive
tools is modest. There are LaTeX-based equation editors for PowerPoint and
LibreOffce, but they are tedious to use for large amounts of formulas.
Another (and often better)
solution is to convert each formula to an online picture using
URL: "http://www.codecogs.com/latex/eqneditor.php". Here you can copy
and paste existing formulas from LaTeX documents.
Computer code is not well supported in interactive tools.
Syntax highlighting is impossible and you are left with setting the
code in monospace font manually. Consequently, slides with much mathemtics and
computer code look better in markup languages like LaTeX/Beamer,
HTML5, or Remark.

Tools for interactive slide design include "Microsoft PowerPoint": "http://en.wikipedia.org/wiki/Microsoft_PowerPoint", Apple's "Keynote": "http://en.wikipedia.org/wiki/Keynote_(presentation_software)", and
"Google Presenter": "http://computers.tutsplus.com/tutorials/getting-started-with-google-slides--cms-21359" (Google slides). The latter is very easy to
use and has recently become very popular because of its features
for online collaboration, though PowerPoint and Keynote
are technically more advanced tools than Google Presenter.

##MOVIE: [https://www.youtube.com/watch?v=RrpjzquqUIo] Google presentation tutorial

"Google Presenter video": "https://www.youtube.com/watch?v=RrpjzquqUIo] Google presentation tutorial"

=== Markup-based slide tools ===

Slides can alternatively be designed using a markup language, usually
"LaTeX": "http://en.wikipedia.org/wiki/LaTeX", "HTML": "http://en.wikipedia.org/wiki/HTML", "Markdown": "http://en.wikipedia.org/wiki/Markdown", or "DocOnce": "http://hplgit.github.io/doconce/doc/web/index.html".
Instead of (e.g.) clicking on an italic button
to get italic text, one writes in plain text `<em>some text</em>` in HTML,
`\emph{some text}` in LaTeX, or
`*some text*` in Markdown and DocOnce. The whole slide presentation is a plain
text file with instructions.

A main problem with markup languges is that you
have much less control of where slide elements appear on the slide compared
with the interactive, visual tools. However, markup languages have some
important advantages:

 * excellent support for mathematics and computer code
 * sometimes quicker writing (especially in Markdown and DocOnce)
 * easy to generate slides from existing papers and books
 * easy to change notation, terms, etc. in a large set of slides

For at least two decades, "LaTeX/Beamer":
"http://en.wikipedia.org/wiki/Beamer_(LaTeX)" has been a dominating
tool for writing slides with mathematics and computer code. Recently,
LaTeX/Beamer has experienced considerable competition from
"reveal.js": "http://lab.hakim.se/reveal-js/#/" and to some extent
"deck.js": "http://imakewebthings.com/deck.js/". Both these tools are
based on modern HTML5 and CSS technology and combine in some way the
strength for mathematics and computer code from LaTeX/Beamer with the
visual appearance of PowerPoint, Keynote, and Google Presenter.
Especially in more mathematically or computer science oriented
communities, there is significant use of LaTeX/Beamer and reveal.js,
with the Markdown-based "Remark": "http://remarkjs.com/#1" tool as a
new interesting alternative coming up (Markdown-based tools are
gaining increasing popularity in general).

=== Remark ===

The HTML, reveal.js, deck.js, Remark, and LaTeX/Beamer slides in this
repository were all *automatically generated* from "slides in DocOnce
format":
"https://github.com/hplgit/MAlley-slide-templates/blob/master/doconce/AE_presentation_template.do.txt". So
to write LaTeX/Beamer slides, one can either write directly in LaTeX
markup, or one can write in "DocOnce markup":
"http://hplgit.github.io/doconce/doc/pub/slides/index.html" and
automatically translate to LaTeX/Beamer. The advantage of writing on
DocOnce is that one can easily generate reveal.js, deck.js, Remark,
and plain HTML slides as well. That feature gives you the possibility to
use Beamer for live presentations, but publish the talk online in (e.g.)
reveal.js format.

=== Author ===

The content of repository was created by Hans Petter Langtangen ("hplgit": "https://github.com/hplgit"), Simula Research Laboratory and Unviersity of Oslo, Norway. The contents of the templates were based on slides made by Michael Alley.

=== How to contribute ===

Do you see better technical solutions in some slide set? Fork the project
and send a pull request if you implement improvements! Or make an issue about
a question or problem setting.
