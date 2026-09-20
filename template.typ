// Visual adaptation of Awesome-CV by Claud D. Park.
// TeX points are 1/72.27 inch; Typst points are 1/72 inch.
#let pt-tex = 72 / 72.27 * 1pt
#let colors = (
  body: rgb("333333"),
  heading: rgb("414141"),
  muted: rgb("5d5d5d"),
  footer: rgb("999999"),
  accent: rgb("ab0000"),
)
#let fonts = (body: "Source Sans Pro", name: "Roboto", icons: "FontAwesome")

// Measured against the supplied PDF. Keep these values together when retuning.
#let spacing = (
  leading: 4.633pt,
  footer: 8.594pt,
  name-top: 19.833pt,
  after-name: 10.526pt,
  after-position: 9.101pt,
  after-header: 15.592pt,
  contact-icon: 1.975pt,
  contact-separator: 7.97pt,
  section: (regular: 21.56pt, compact: 18.86pt, roomy: 21.76pt, summary: 19.77pt),
  after-section: 6.414pt,
  summary-paragraph: 7.124pt,
  after-summary: 11.256pt,
  entry-role: 7.971pt,
  entry-body: 6.844pt,
  after-entry: 10.886pt,
  after-empty-entry: 8.676pt,
)
#let icons = (
  phone: "\u{f10b}",
  email: "\u{f0e0}",
  home: "\u{f015}",
  github: "\u{f092}",
  linkedin: "\u{f08c}",
  twitter: "\u{f099}",
)
#let star = text(font: "STIX Two Math")[★]
#let pair = grid.with(columns: (1fr, auto), align: (left, right))
#let title-text = text.with(size: 10 * pt-tex, weight: "bold", fill: colors.accent)
#let meta-text = text.with(size: 8 * pt-tex, style: "italic", fill: colors.muted)

#let contact(kind, url, label) = {
  let icon = text(font: fonts.icons, icons.at(kind)) + h(spacing.contact-icon)
  // The original phone link underlines only its label.
  if kind == "phone" { icon + link(url, label) }
  else { link(url, icon + label) }
}

#let resume(first-name: "", last-name: "", position: [], contacts: (), date: "", body) = {
  let name = first-name + " " + last-name
  set document(title: name + " · Résumé", author: name)
  set page(
    paper: "a4",
    margin: (x: 14mm, top: 8mm, bottom: 18mm),
    footer-descent: spacing.footer,
    footer: context {
      set text(size: 8 * pt-tex, fill: colors.footer)
      grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        [#date],
        [#name#h(0.6em)·#h(0.6em)Résumé],
        counter(page).display("1"),
      )
    },
  )
  set text(
    font: fonts.body,
    size: 9 * pt-tex,
    fill: colors.body,
    top-edge: 0.7em,
    bottom-edge: "baseline",
    lang: "en",
    hyphenate: false,
  )
  set par(leading: spacing.leading, spacing: 0pt)
  set block(spacing: 0pt)
  show link: underline.with(
    evade: false,
    offset: 2.4pt,
    stroke: (thickness: 0.3985pt, dash: (2.391pt, 2.072pt)),
  )

  // Preserve the original header's slight horizontal offset.
  align(center, move(dx: 1.46pt)[
    #text(font: fonts.name, size: 28 * pt-tex, top-edge: spacing.name-top)[
      #text(weight: 100, fill: colors.muted, first-name)#text(weight: "bold", " " + last-name)
    ]
    #v(spacing.after-name)
    #text(size: 10 * pt-tex, fill: colors.accent, position)
    #v(spacing.after-position)
    #text(font: fonts.name, size: 8 * pt-tex)[
      #contacts.join([#h(spacing.contact-separator)|#h(spacing.contact-separator)])
    ]
  ])
  v(spacing.after-header)
  body
}

#let section(title, gap: "regular", body) = {
  let heading = text(size: 16 * pt-tex, weight: "bold", fill: colors.heading, title)
  let rule = box(width: 1fr, move(dy: -0.448pt,
    line(length: 100% - 2.182pt, stroke: 0.897pt + colors.muted)))
  block(breakable: true)[
    #block(sticky: true)[
      #heading#h(2.8pt)#rule
      #v(spacing.section.at(gap) - 7 * pt-tex)
    ]
    #body
    #v(spacing.after-section)
  ]
}

#let summary(body) = section("Summary", gap: "summary")[
  #set par(spacing: spacing.summary-paragraph)
  #body
  #v(spacing.after-summary)
]

#let entry(title: [], role: [], location: [], date: [], body: none) = block(breakable: false)[
  #pair(
    title-text(title),
    meta-text(size: 9 * pt-tex, weight: "light", fill: colors.accent,
      top-edge: 7 * pt-tex, location),
  )
  #v(spacing.entry-role)
  #pair(meta-text(weight: "bold", role), meta-text(weight: "light", date))
  #if body != none {
    v(spacing.entry-body)
    set par(justify: true)
    set list(marker: [•], indent: 0.52pt, body-indent: 5.47pt, spacing: spacing.leading)
    body
    v(spacing.after-entry)
  } else {
    v(spacing.after-empty-entry)
  }
]
