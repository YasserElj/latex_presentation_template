# Beamer presentation template

Metropolis + orange UM6P styling used for the SICS-155 / MICCAI 2025 talk. Clone this folder, edit metadata, replace the gray placeholder figures, and compile.

## Layout

```
presentation.tex   fill-in skeleton (all slide types from the SICS talk)
config.tex         title, authors, emails, URL
preamble.tex       theme, fonts, colors, footer, \placeholderfig
images/            um6p_logo.pdf, cc-logo.pdf, plus your figures
example/           the original SICS-155 talk (source + compiled PDF)
```

## New talk

```bash
cp -r presentation_tex_template ~/tex/my_new_talk
cd ~/tex/my_new_talk
```

1. Edit `config.tex`.
2. Drop figures into `images/` and replace `\placeholderfig{...}` with `\includegraphics[width=\linewidth]{your-file.png}`.
3. Rewrite the frame text. Keep or delete slides; the footer numbers content frames automatically (title is skipped).
4. Compile with XeLaTeX:

```bash
latexmk -xelatex presentation.tex
# or: make
```

Needs a TeX Live install with Beamer, Metropolis (`beamertheme-metropolis`), `fontspec`, and optionally CMU Serif at `/usr/share/fonts/truetype/cmu/`.

## Slide types included

| Frame | Pattern |
| --- | --- |
| Title | Metadata + UM6P / College of Computing logos |
| Overview | Two-column blocks + stacked figures |
| Previous methods | Method blocks + notes sidebar |
| Approach | Bullets + architecture figure |
| Equations | Displayed losses + diagram |
| Setup | Dataset / training + hardware |
| Tuning | Search space + two stacked plots |
| Results | Headline bullets + `booktabs` table |
| Qualitative | Full-width stacked figures |
| Ablation | Components / cost / limitations |
| Conclusion | Contributions + future work + takeaway line |
| Thank you | Standout slide with three contacts |

## Example

`example/sics_presentation.tex` is the current SICS-155 talk. Compile it from `example/`:

```bash
cd example
latexmk -xelatex sics_presentation.tex
```

The compiled PDF is already there as `example/sics_presentation.pdf`.
