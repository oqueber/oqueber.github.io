# oqueber.com

Personal site: **CV** · **Lab** (ideas & inventions) · **Brainstorm** (links + tool wiki). Spanish at `/`, English at `/en/`.
Built and published by GitHub Actions on every push to `main` (see [Publishing](#publishing)).

## Everyday workflow (VS Code)

`Ctrl+Shift+P` → **Tasks: Run Task**:

| task                               | what it does                                                         |
|------------------------------------|----------------------------------------------------------------------|
| Web · Vista previa (arrancar)      | starts Docker + the site, opens http://localhost:4000 (`Ctrl+Shift+B`) |
| Web · Vista previa (parar)         | stops it                                                             |
| Web · Ver errores de la vista previa | last build messages                                                |
| Lab · Nueva idea                   | asks title, status, language → creates the folder, opens `index.md`  |
| Lab · Nueva herramienta (wiki)     | asks a name → creates the tool page                                  |
| Lab · Optimizar imágenes           | shrinks photos over 2000 px (GitHub also does this on push)          |

Snippets — type the word in any `.md` file and press `Tab`:
`log` (log line with today's date) · `secciones` (all tab markers) · `seccion` · `tool` (tool with picture/link) ·
`ask` · `foto` · `dato` (wiki spec line).

With Claude Code:

- `/idea-from-poster path/to/poster.jpg` → creates a **draft** article from your idea poster (brief, process,
  tools linked to the wiki, open question, log) **plus the English translation**, and lists anything to double-check.
- `/translate-idea content/_lab/2025/01/29/el-compi-bmo` → writes or updates `index.en.md`.

## Everything you edit is in `content/`

```text
content/
├── cv/index.md              CV text, Spanish + English side by side (+ photo.jpg, CV PDFs)
├── brainstorm/index.md      links, grouped
├── _tools/<slug>/           tool wiki: index.md + photo.jpg (+ datasheets…)
└── _lab/YYYY/MM/DD/slug/    one folder per idea
    ├── index.md             the article (Spanish, or lang: en)
    ├── index.en.md          optional English translation
    ├── poster.jpg           cover (16:9) — shown in the Lab grid
    ├── photos/              → gallery in the "Proceso" tab (sorted by name: 01.jpg, 02.jpg…; .mp4 works too)
    ├── audio/               → players in the "Proceso" tab
    └── code/                → download list in the "Herramientas" tab
```

## Lab articles

New ideas start as **drafts** (`draft: true`): visible in the local preview with a "Borrador" badge, never on
the live site. Delete that line when it's ready, then push.

### Front matter

| key       | what it does                                                               |
|-----------|----------------------------------------------------------------------------|
| `draft`   | `true` = only in the local preview                                         |
| `status`  | `idea` · `working` · `done` — Lab filter + progress track on the article  |
| `summary` | one sentence under the title (and in link previews)                       |
| `tools`   | list shown in the "Herramientas" tab (see [Tool wiki](#tool-wiki))         |
| `ask`     | an open question to readers; adds an "answer" button that opens an issue  |
| `links`   | buttons in the "Resultado" tab (Thingiverse, GitHub…)                      |
| `lang`    | `es` (default) or `en` — interface language of that article               |

If a title or text contains `: ` wrap it in quotes (`title: "V2: más rápido"`) — otherwise the build stops and tells you where.

### Body → tabs + log

```markdown
<!-- result -->
How it ended.
<!-- brief -->
The problem and why.
<!-- process -->
How I built it.
<!-- tools -->
Extra notes.
<!-- log -->
- 2025-02-03 Probé la pantalla, demasiado lenta.
- 2025-01-29 Nace la idea.
```

- An empty section shows a friendly note instead. Avoid other `<!-- … -->` comments in the body; they would cut a tab short.
- **Log (bitácora)**: one dated line per step, any order (shown newest first at the top of "Proceso").
  The newest date shows as "↻ actualizado" on the article and its card, and the home page lists the most
  recently active ideas first — so a one-line update is enough to keep an idea alive.

### English translation

`index.en.md` next to `index.md`, with only `title`, `lang: en`, `summary` (and `ask`) in its front matter, plus the
translated body. Status, date, cover, tools and links come from `index.md`. The ES/EN switch jumps between both,
and the English Lab links to it. `/translate-idea` writes it for you.

## Tool wiki

One page per tool at `/brainstorm/tools/<slug>/`, listed in Brainstorm › Herramientas.
Create one with the task **Lab · Nueva herramienta** (or `.\new-tool.ps1 "ESP32-CAM"`).
Fill `summary`, `specs` (label: value lines) and `links`, drop `photo.jpg` in the folder, write what you learned in the body.

**Linking is automatic, both ways.** In any article, the tool's name in `tools:` becomes a link with its photo,
and the tool page lists every article that uses it ("Usado en"):

```yaml
tools:
  - ESP32-CAM                      # wiki page exists → linked, with photo
  - Impresora 3D                   # no wiki page → plain item (create one later and it links itself)
  - name: Powerbank 10.000 mAh     # no wiki page, but your own picture / link / note
    img: powerbank.jpg             # file in the article folder, or a full https:// URL
    url: https://…
    note: ≈ 5 h a máxima intensidad
```

Names match ignoring case, accents and punctuation ("Batería 18650" ↔ `bateria-18650`).
To force a match when the name differs: `- tool: esp32-cam`.

## Reader participation

Every article ends with **Tu turno / Your turn**: buttons that open a pre-filled GitHub issue on this repo.
For comments under each article, set up giscus (steps in `_config.yml`) and set `giscus.enabled: true`.

## Publishing

`.github/workflows/site.yml` runs on every push to `main`:

1. shrinks photos over 2000 px and commits them back ("Optimise images"),
2. leaves drafts out,
3. builds with the same Jekyll as GitHub Pages and publishes.

If something is broken the run fails, **GitHub emails you** the file and line, and the live site stays as it was.
Pull requests are built (checked) but not published.

**One-time setup:** repo **Settings → Pages → Build and deployment → Source: GitHub Actions**.

## Preview without VS Code

```powershell
.\scripts\preview.ps1 start   # or: stop · logs · open
```

## Theme files (rarely touched)

`_layouts/` page templates · `_includes/` cards, tool list, helpers · `_data/i18n.yml` interface text ES/EN ·
`assets/css/site.css` the Blueprint style (colours at the top) · `assets/js/site.js` filters, tabs, CV switch ·
`pages/` routes for `/en/…`, `/lab/`, 404 · `scripts/` image optimiser, draft filter, preview.
