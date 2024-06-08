#let project(title: "", authors: (), columns: 2, body) = {
  set document(author: authors, title: title)

  // page layout
  set page(
    margin: (left: 12mm, right: 12mm, top: 14mm, bottom: 14mm),
    numbering: "1",
    number-align: center,
    header: [
     #grid(
        columns: (33%, 33%, 33%),
        title,
        align(center, datetime.today().display()),
        align(right, ..authors)
      )
    ],
    columns: columns,
  )
  
  // font
  set text(font: "New Computer Modern", lang: "en", size: 10pt)
  show math.equation: set text(weight: 400)

  set heading(numbering: "1.1")
  set par(leading: 0.58em)
  set text(hyphenate: true)  

  // custom headings
  show heading.where(
    level: 1
  ): it => block(width: 100%)[
    #block(fill: luma(200), inset: 0.35em, it, width: 100%)
  ]

  show heading.where(
    level: 2
  ): it => block(width: 100%)[
    #block(fill: luma(230), inset: 0.25em, it, width: 100%)
  ]

  show heading.where(
    level: 3
  ): it => block(width: 100%)[
    #block(fill: luma(250), inset: 0.1em, it, width: 100%)
  ]

  // code snippets
  show raw: set text(font: "JetBrainsMono NF")
  show raw.where(block: true): it => {
    set par(justify: false);
    set text(size: 8pt);
    
    block(radius: 1em, fill: luma(250), width: 100%, inset: 1em, it)
  }
  show par: set block(above: 0.75em, below: 0.75em)
  
  body
}