for i in {497..639}; do
  magick -density 600 "cropped_advanced.pdf[$i]" -background white -alpha remove \
    -morphology Erode Diamond:1 \
    -type Bilevel \
    -compress Group4 \
    "page_$i.pdf"

done
# magick -verbose -density 600 "cropped_algebra.pdf[$i]" \
#   -level 40%,100%,0.5 \
#   -morphology Erode Diamond:1 \
#   -type Bilevel \
    # -threshold 50% \
#   -compress Group4 "page_$i.pdf"

pdfunite page_{0..639}.pdf full_book.pdf
