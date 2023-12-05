#import "template.typ": thesis
#show: doc => thesis(
  title: [
    A Thesis Title
  ],
  authors: (
    (
      name: "Nom Pulastra",
      affiliation: "GRAND VALLEY STATE UNIVERSITY",
      email: "pulastra@polismassa.edu",
    ),
  ),
  acknowledgements: lorem(100),
  abstract: lorem(150),
  doc,
)

= Introduction
#lorem(90)

== Motivation
#lorem(140)

== Problem Statement
#lorem(50)

= Related Work
#lorem(200)