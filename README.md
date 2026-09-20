# Resume in Typst

A one-page, editable Typst resume adapted from Awesome-CV.

- `resume.typ`: personal details and resume content.
- `template.typ`: typography, header, footer, sections, and entries.
- `fonts/`: bundled fonts for reproducible rendering.

## Build

With Typst 0.15.0:

```sh
mkdir -p build
typst compile --ignore-system-fonts --font-path fonts resume.typ build/resume.pdf
```

For live preview:

```sh
mkdir -p build
typst watch --ignore-system-fonts --font-path fonts resume.typ build/resume.pdf
```

On the Typst web app, upload this directory including `fonts/`, then open
`resume.typ`. No Typst packages or LaTeX installation are needed.

## Continuous integration

The [Build resume workflow](.github/workflows/build.yml) compiles the resume on
every pull request and push to `main`, and can also be run manually from the
Actions tab after it is merged. It uses Typst 0.15.0 and the bundled fonts,
without relying on system fonts. Download the `resume-pdf` artifact from a
successful workflow run to get the compiled `resume.pdf`.

Local builds and CI write the PDF to `build/`. Generated PDFs, preview and
comparison images, and local conversion references are not tracked by Git.

## Editing

Edit content in `resume.typ`. Sections and entries use normal document flow,
so text can wrap and move subsequent entries when edited. Each entry stays
together across page breaks. Update the `date` argument in `resume.typ` as needed.

The layout uses an A4 page with custom margins, colors, font families,
weights, section rules, contact icons, dashed links, and a footer.

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
