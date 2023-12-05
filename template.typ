#let thesis(
  title: none,
  authors: (),
  acknowledgements: [],
  abstract: [],
  doc,
) = {

  // Set and show rules from before.
  
  set text(
    font: "Times New Roman",
    size: 12pt,
  )
  
  set par(
    justify: true,
    leading: 2em
  )

  set align(center)
  text(12pt, title)

  let count = authors.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 24pt,
    ..authors.map(author => [
      #author.name \
      #v(30%, weak: true) \
      A Thesis Submitted to the Graduate Faculty of \
      #author.affiliation \
      In \
      Partial Fulfillment of the Requirements\
      For the Degree of \
      Master of Science in Engineering \
      #v(20%, weak: true) \
      Padnos College of Engineering \
      #v(5%, weak: true) \
      August 2024
      // #link("mailto:" + author.email)
    ]),
  )
  
  pagebreak()
  
  par(justify: false)[
    *Acknowledgements* \
    #acknowledgements
  ]
  
  pagebreak()

  par(justify: false)[
    *Abstract* \
    #abstract
  ]

  pagebreak()

  set heading(numbering:"1.1")

  // todo: table of contents
  // todo: list of tables
  // todo: list of figures
  // todo: math symbols
  // todo: acronyms and abbreviations

  set align(left)
  columns(1, doc)

  // todo: references

  // todo: appendix
}