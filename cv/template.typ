/*
This copy of the resume formatting template is provided in the template download in case
you'd like to make your preferred edits to the template directly.

If you'd like to use this copy instead of the package, you'll need to update the #import
statement in your resume.typ file to reference this file directly.

Have you made edits or bug fixes to this template that you feel would help out others?
It would be fantastic if you submitted a pull request to the template repository at
https://github.com/chaoticgoodcomputing/typst-resume-starter !
*/

/*
Core formatting for the template document type. Establishes general document-wide formatting,
and creates the header and footer for the resume.
*/
#let resume(
  author: "",
  location: "",
  contacts: (),
  lastupdated: "",
  body
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    font: "New Computer Modern",
    size: 11pt,
    lang: "en"
  )

  let footer = context [
    #set text(9pt, style: "italic", weight: "light")
    #grid(
      columns: (1fr, 1fr, 1fr),
      grid.cell(
        align: left,
        [Last updated: #lastupdated]
      ),
      grid.cell(
        align: center,
        [#author]
      ),
      grid.cell(
        align: right,
        [Page #counter(page).display(
          "1/1",
          both: true,
        )]
      )
    )
  ]

  set page(
    margin: (
      top: 1.25cm,
      bottom: 1.25cm,
      left: 1.5cm,
      right: 1.5cm
    ),
    footer: footer
  )

  show link: set text(
    fill: rgb("#0645AD")
  )
  
  // Header parameters, including author and contact information.
  show heading: it => [
    #pad(top: 0pt, bottom: -15pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Author
  align(center)[
    #block(text(weight: 700, 2.5em, [#smallcaps(author)]))
  ]

  // Contact
  pad(
    top: 0.25em,
    align(center)[
      #smallcaps[#contacts.join("  |  ")]
    ],
  )

  // Location
  if location != "" {
    align(center)[
      #smallcaps[#location]
    ]
  }

  // Main body.
  set par(justify: true)

  body
}

/*
Allows hiding or showing full resume dynamically using global variable. This can
be helpful for creating a single document that can be rendered differently depending on
the desired output, for cases where you'd like to simultaneously render both a full copy
and a single-page instance of only the most important or vital information.
*/
#let hide(should-hide, content) = {
  if not should-hide {
    content
  }
}

/*
Education section formatting, allowing enumeration of degrees and GPA
*/
#let edu(
  institution: "",
  date: "",
  degrees: (),
  gpa: "",
  location: "",
  mentor: ()
) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        #strong[#institution]
        #{
          if gpa != "" [
            | #emph[GPA: #gpa]
          ]
        }
        \ #{
          for degree in degrees [
            #strong[#degree.at(0)] | #emph[#degree.at(1)] \
          ]
        }
        #{
          if mentor != () [
            #emph[#mentor.at(0): #mentor.at(1)]
          ]
        }
      ],
      align(right)[
        #emph[#date]
        #{
          if location != "" [
            \ #emph[#location]
          ]
        }
      ]
    )
  )
}

/*
Skills section formatting, responsible for collapsing individual entries into
a single list.
*/
#let skills(areas) = {
  for area in areas {
    strong[#area.at(0): ]
    area.at(1).join(" | ")
    linebreak()
  }
}

/*
Experience section formatting logic.
*/
#let exp(
  institution: "",
  mentor: (),
  role: "",
  project: "",
  date: "",
  location: "",
  details: []
) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        #{
          if institution != "" [
            #strong[#institution]\
          ]
        }
        #{
          if role != "" and mentor != () [
            #emph[#role] | #emph[#mentor.at(0): #mentor.at(1)]
          ]
        }
      ],
      align(right)[
        #{
          if location != "" [
            #emph[#location] \
          ]
        }
        #emph[#date]
      ]
    )
  )
  details
}

#let pub(
  title: "",
  url: "",
  author: 0,
  pub_authors: (),
  journal: "",
  venue: "",
  venue_id: "",
  year: ""
) = {
  pad(
    bottom: 10%,
    [
      #link(url)[#strong(title)]. #{
        let last_but_one = pub_authors.len() - 2
        for i in range(pub_authors.len()) [
          #{
            let conn = ""
            if i == last_but_one [
              #{conn = " and"}
            ]
            else if i == pub_authors.len() - 1 [
              #{conn = "."}
            ]
            else [
              #{conn = ","}
            ]

            if i == author [
              #emph(pub_authors.at(i)+conn)
            ]
            else [
              #text(pub_authors.at(i)+conn)
            ]
          }
        ]
      }
      #text("In " + emph(venue) + " (" + strong(venue_id) + ").")

    ]
  )
}


#let act(
  period: "",
  act_content: ""
) = {
  pad(
    bottom: 10%,
    grid(
      columns: (.2fr, 1fr),
      align(left)[
        #emph[#period]
      ],
      align(left)[
        #text[#act_content]
      ]
    )
  )
}
