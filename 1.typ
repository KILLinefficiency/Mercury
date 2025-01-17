#set page(
  flipped: true,
  background: image(height: 100%, "assets/final_bg.png"),
  margin: (
    x: 1cm,
    y: 1cm
  )
)


#let name = "{}"
#let year = "{}"
#let college = "{}"
#let event = "{}"

#let Yellow = rgb("ffde59")

#align(center)[
  #box(radius: 20pt, width: 100%, height: 100%, outset: 40pt)[
    #grid(
      columns: (auto, 1fr, auto),
      align(top + left)[#image("assets/logo.png", height: 3.5cm, width: 3.5cm)],
      align(center)[
        #box(outset: 15pt)[
          #text(size: 20pt, font: "Abel", fill: Yellow)[Yeshwant Rural Education Society's] \
          #text(size: 30pt, font: "Abel", fill: Yellow)[Bapurao Deshmukh College of Engineering] \
          #text(size: 20pt, font: "Abel", fill: Yellow)[Sewagram, Wardha (442102)] \ \
          #text(size: 15pt, font: "Abel", fill: white)[Recognized by AICTE, New Delhi, & Affiliated to Rashtrasant Tukdoji Maharaj Nagpur University] \ \
          #text(size: 15pt, font: "Abel", fill: white)[*Awarded Grade 'A' by Govt. of Maharashtra \ (NAAC Accredited)*]
        ]
      ],
      image("assets/naac.png", height: 3.5cm, width: 3.5cm)
    )
    #set text(fill: white)
    #set par(justify: true)
    #text(size: 20pt, font: "Share Tech")[In Association with #text(size: 5pt)[ \ ] #text(size: 40pt)[Wheelspin 2K24] \ #text(size: 5pt)[ \ ] 18#super[th] National Level Techfest] \
    #line(length: 100%, stroke: 1.5pt + white)
    #underline[#text(size: 40pt, font: "Dosis")[Certificate]]
    \ \ 
    #text(size: 18pt, font: "Satisfy", fill: white)[
      This certificate is proudly presented to \ #text(fill: Yellow)[#underline[#name]] \ #text(size: 2pt)[ \ ]of #text(fill: Yellow)[#underline[#year]] year from #text(fill: Yellow)[#underline[#college]] \ #text(size: 2pt)[ \ ] for participation in the event #text(fill: Yellow)[#underline[#event]] at Wheelspin 2024, held on \ #text(size: 2pt)[ \ ] 6th March 2024, organized by Bapurao Deshmukh College of Engineering, Sewagram, Wardha. 
    ]
    \
    #if event != "Presentair" [ \ ]
    #line(length: 100%, stroke: 1.5pt + white)
    #set text(font: "Dosis")
    #grid(
      columns: (1fr, 1fr, 1fr),
      grid(
        columns: (1fr),
        image("assets/co-ordinator.png", height: 1.5cm, width: 1.7cm),
        text(size: 12pt)[Prof. S. D. Zilpe \ Chief Co-ordinator],
      ),
      grid(
        columns: (1fr),
        image("assets/hod.png", height: 1.5cm, width: 1.7cm),
        text(size: 12pt)[Prof. K. D. Bhingare \ Convener]
      ),
      grid(
        columns: (1fr),
        image("assets/principal.png", height: 1.5cm, width: 1.7cm),
        text(size: 12pt)[Dr. S. G Makarande \ Principal]
      )
    )
  ]
]
