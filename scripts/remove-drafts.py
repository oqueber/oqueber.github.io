"""Used by the GitHub build only: deletes drafts from the build workspace so they
are never published. Nothing is removed from the repository.

  draft: true in index.md     → the whole article/tool folder is left out
  draft: true in index.en.md  → only the English translation is left out
"""
import pathlib
import re
import shutil

FRONT_MATTER = re.compile(r"^---\s*\n(.*?)\n---", re.S)
DRAFT = re.compile(r"^draft:\s*true\b", re.M)

docs = [p for base in ("content/_lab", "content/_tools") for p in pathlib.Path(base).rglob("index*.md")]
removed = 0

for md in docs:
    if not md.exists():  # its folder was already removed
        continue
    match = FRONT_MATTER.match(md.read_text(encoding="utf-8-sig"))
    if not match or not DRAFT.search(match.group(1)):
        continue
    if md.name == "index.md":
        shutil.rmtree(md.parent)
        print(f"draft left out: {md.parent}")
    else:
        md.unlink()
        print(f"draft left out: {md}")
    removed += 1

print(f"{removed} draft(s) left out of the build." if removed else "No drafts.")
