#import "template.typ": thesis
#show: doc => thesis(
  title: [
    A Working Thesis Title
  ],
  authors: (
    (
      name: "Nom Pulastra",
      affiliation: "Grand Valley State University",
      college: "Padnos College of Engineering",
      degree: "Master of Science in Engineering",
      date: "August 2024",
      email: "pulastra@polismassa.edu",
    ),
  ),
  acknowledgements: lorem(100),
  abstract: lorem(150),
  doc,
)

= Introduction
#lorem(50)

== Motivation
#lorem(50)

== Problem Statement
#lorem(50)

#figure(
  image("image.png", width: 20%),
  caption: [A nice figure!],
)

= Related Work
#lorem(50)

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3], [0.7], [0.5],
  ),
  caption: [Experiment results],
)

= Conclusion
#lorem(50)

Example citation here @IEEEhowto:IEEEtranpage.
Example citation there @IEEEexample:shellCTANpage.
