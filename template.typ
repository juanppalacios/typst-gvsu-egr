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
      #v(25%, weak: true) \
      A Thesis Submitted to the Graduate Faculty of \
      #upper(author.affiliation) \
      In \
      Partial Fulfillment of the Requirements\
      For the Degree of \
      #author.degree \
      #v(20%, weak: true) \
      #author.college \
      #v(5%, weak: true) \
      #author.date
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

  show outline.entry.where(
    level: 1
  ): it => {
      v(12pt, weak: true)
      strong(it)
  }

  outline(
    title: [Table of Contents],
  )

  pagebreak()

  outline(
    title: [List of Figures],
    target: figure.where(kind: image),
  )

  pagebreak()

  outline(
    title: [List of Tables],
    target: figure.where(kind: table),
  )

  pagebreak()

  // todo: math symbols
  // todo: acronyms and abbreviations

  set align(left)
  columns(1, doc)

  pagebreak()
  bibliography(
    title: "References",
    "references.bib"
  )

  // todo: appendix
}