# Resume in Typst

A one-page, editable Typst conversion of the supplied `Awesome_CV.pdf`.

- `resume.typ`: personal details and resume content.
- `template.typ`: typography, header, footer, sections, and entries.
- `fonts/`: bundled fonts for reproducible rendering.
- `resume.pdf`: compiled result.
- `comparison.png`: original on the left, Typst on the right.

## Build

With Typst 0.15.0:

```sh
typst compile --ignore-system-fonts --font-path fonts resume.typ resume.pdf
```

For live preview:

```sh
typst watch --ignore-system-fonts --font-path fonts resume.typ resume.pdf
```

On the Typst web app, upload this directory including `fonts/`, then open
`resume.typ`. No Typst packages or LaTeX installation are needed.

## Continuous integration

The [Build resume workflow](.github/workflows/build.yml) compiles the resume on
every pull request and push to `main`, and can also be run manually from the
Actions tab after it is merged. It uses Typst 0.15.0 and the bundled fonts,
without relying on system fonts. Download the `resume-pdf` artifact from a
successful workflow run to get the compiled `resume.pdf`.

CI writes its output to `build/`. The checked-in PDF and preview images are
reference snapshots; CI does not update them automatically. The original
LaTeX archive and PDF are kept in `reference/` for comparison.

## Editing

Edit content in `resume.typ`. Sections and entries use normal document flow,
so text can wrap and move subsequent entries when edited. Each entry stays
together across page breaks. The date is deliberately fixed to September 20,
2026 to match the supplied PDF; update the `date` argument as needed.

The layout preserves the original A4 page, margins, colors, font families,
weights, section rules, contact icons, dashed links, footer, and line breaks.
Spacing is calibrated to the supplied PDF. Small glyph-width and dash-pattern
differences can remain between the two typesetting engines.

Colors, fonts, and calibrated spacing are grouped at the top of `template.typ`.
Contacts use named icons (`phone`, `email`, `home`, `github`, `linkedin`,
`twitter`). Section gaps use named presets (`regular`, `compact`, `roomy`);
their exact measurements stay in the template rather than the resume content.

## Credits

Visual design adapted from [Awesome-CV](https://github.com/posquit0/Awesome-CV)
by Claud D. Park. The supplied resume source identifies its template as
CC BY-SA 4.0 and its LaTeX class as LPPL 1.3c. This conversion retains that
attribution; the provided resume content remains the author's.

Roboto and Font Awesome are copied from the supplied archive. Source Sans Pro
is Adobe's 2.045 roman / 1.095 italic release; STIX Two Math is version 2.120.
Font licenses are included alongside the fonts.
