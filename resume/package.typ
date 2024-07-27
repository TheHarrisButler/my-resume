#let default-theme = (
  margin: 22pt,

  font: "Roboto",
  font-size: 11pt,
  accent-color: black,
  body-color: rgb("222"),

  main-width: 5fr,
  main-gutter-width: 64pt,

  aside-width: 3fr,
  aside-gutter-width: 48pt,

  footer-width: 8fr,
  footer-gutter-width: 48pt,
)


#let cv(
  title: "",
  subtitle: "",
  theme: (),
  aside: [],
  main: [],
  footer,
) = {
  // Function to pick a key from the theme, or a default if not provided.
  let th(key, default: none) = {
    return if key in theme and theme.at(key) != none {
      theme.at(key)
    } else if default != none and default in theme and theme.at(default) != none {
      theme.at(default)
    } else if default != none {
      default-theme.at(default)
    } else {
      default-theme.at(key)
    }
  }

  set page(
    margin: (
      top: th("margin"),
      bottom: th("margin"),
      left: th("margin"),
      right: th("margin"),
    ),
  )

  // Fix for https://github.com/typst/typst/discussions/2919
  show heading.where(level: 1): set text(size: th("font-size"))
  show heading.where(level: 2): set text(size: th("font-size"))

  set text(font: th("font"))
  set text(size: th("font-size"))

  set par(linebreaks: "simple", leading: 0.4em)
  set block(above: 7pt, spacing: 10pt)

  {
    show heading.where(level: 1): set text(size: 2.3em)
    show heading.where(level: 2): set text(size: 1.1em, weight: "regular")
    show heading.where(level: 1): set text(fill: th("header-accent-color", default: "accent-color"))
    show heading.where(level: 2): set text(fill: th("header-body-color", default: "body-color").lighten(30%))

    stack(
      spacing: 5pt,
      heading(level: 1, title),
      heading(level: 2, subtitle)
    )
  }

  grid(
    columns: (th("main-width"), th("margin"), th("aside-width")),

    {
      set grid(columns: (th("main-gutter-width"), 1fr))
      show heading.where(level: 1): set text(fill: th("main-accent-color", default: "accent-color").lighten(30%))
      show heading.where(level: 2): set text(fill: th("main-body-color", default: "body-color"))
      set text(fill: th("main-body-color", default: "body-color").lighten(40%))
      set rect(fill: th("main-accent-color", default: "accent-color"))

      main
    },

    {},

    {
      set grid(columns: (th("aside-gutter-width"), 1fr))
      show heading.where(level: 1): set text(fill: th("aside-accent-color", default: "accent-color").lighten(30%))
      show heading.where(level: 2): set text(fill: th("aside-body-color", default: "body-color"))
      set text(fill: th("aside-body-color", default: "body-color").lighten(40%))
      set rect(fill: th("aside-accent-color", default: "accent-color"))

      aside
    },
  )

  grid(
    columns: (th("footer-width")),

    {
      set grid(columns: (th("footer-gutter-width"), 1fr))
      show heading.where(level: 1): set text(fill: th("main-accent-color", default: "accent-color").lighten(30%))
      show heading.where(level: 2): set text(fill: th("main-body-color", default: "body-color"))
      set text(fill: th("main-body-color", default: "body-color").lighten(40%))
      set rect(fill: th("main-accent-color", default: "accent-color"))

      footer
    }
  )
}


#let section(
  theme: (),
  title,
  body,
) = {
  set grid(columns: (theme.gutter-size, 1fr)) if "gutter-size" in theme
  show heading.where(level: 1): set text(fill: theme.accent-color) if "accent-color" in theme
  show heading.where(level: 2): set text(fill: theme.body-color) if "body-color" in theme
  set rect(fill: theme.accent-color.darken(40%)) if "accent-color" in theme
  set text(fill: theme.body-color) if "body-color" in theme

  v(6pt)
  heading(level: 1, title)
  rect(height: 2pt, width: 100%,)
  body
}


#let entry(
  theme: (),
  right: none,
  gutter,
  title,
  body,
) = {
  set grid(columns: (theme.gutter-size, 1fr)) if "gutter-size" in theme
  show heading.where(level: 2): set text(fill: theme.body-color) if "body-color" in theme
  set text(fill: theme.body-color) if "body-color" in theme

  grid(
    {
      set text(tracking: -0.5pt, style: "italic")
      context {
        set text(fill: text.fill.lighten(40%))
        gutter
      }
    },
    {
      let hasTitle = title != none
      let hasRight = right != none

      if hasTitle or hasRight {
        grid(
          columns: (1fr, auto),
          {
            heading(
              level: 2,
              context {
                set text(fill: text.fill.darken(40%))
                title
              }
            )
          },
          context {
            set text(fill: text.fill.darken(40%))
            right
          },
        )
      }
      if body != none {
        set block(below: 4pt)
        body
      }
    }
  )
}
