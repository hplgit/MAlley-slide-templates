#!/bin/bash
name=AE_presentation_template
#name=tmp

set -x
bash clean.sh

function system {
  "$@"
  if [ $? -ne 0 ]; then
    echo "make.sh: unsuccessful command $@"
    echo "abort!"
    exit 1
  fi
}

#doconce subst '\s{3,}<p>' '\n\n<p>' $html.html
#doconce subst '(\s+<p>){2,}' '\g<1>' $html.html
#doconce subst '<p>\s+(?=</)' '<p>\n' $html.html

# reveal.js
html=${name}-reveal-white
system doconce format html $name --pygments_html_style=native --keep_pygments_html_bg --html_links_in_new_window --html_output=$html
system doconce slides_html $html reveal --html_slide_theme=simple
# Crank up the font for code:
#doconce replace 'pre style="' 'pre style="font-size: 120%; ' $html.html
cp -r $html.html ._${html}*.html fig-talk reveal.js ../html5

# deck.js
html=${name}-deck
system doconce format html $name --pygments_html_style=perldoc --keep_pygments_html_bg --html_links_in_new_window --html_output=$html
system doconce slides_html $html deck --html_slide_theme=sandstone.default
cp -r $html.html ._${html}*.html deck.js ../html5

# Plain HTML documents, one big slide (fine for browsing)
html=${name}-solarized
system doconce format html $name --pygments_html_style=perldoc --html_style=solarized3 --html_links_in_new_window --html_output=$html
system doconce split_html $html.html --nav_button=gray1,bottom
cp -r $html.html ._${html}*.html fig-talk ../html

# Remark (Markdown) slides in HTML
system doconce format pandoc $name --github_md
system doconce slides_markdown $name remark --slide_theme=light
cp $name.html ../html/${name}-remark.html

# LaTeX Beamer slides
beamertheme=red_shadow
system doconce format pdflatex $name --latex_title_layout=beamer --latex_admon_title_no_period --latex_code_style=pyg
system doconce slides_beamer $name --beamer_slide_theme=$beamertheme
cp $name.tex ${name}-beamer.tex
system pdflatex -shell-escape ${name}-beamer
system pdflatex -shell-escape ${name}-beamer
cp $name.pdf ../beamer
