"""Shrink photos so the site stays fast.

Only touches images whose longest side is over MAX px, so it is safe to run
again and again (GitHub runs it on every push). Files inside code/ folders are
left alone — those are downloads.

    python scripts/optimize-images.py            # whole content/ folder
    python scripts/optimize-images.py content/_lab/2025/01/29/el-compi-bmo
"""
import pathlib
import sys

from PIL import Image, ImageOps

MAX = 2000
EXTS = {".jpg", ".jpeg", ".png", ".webp"}

root = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else "content")
saved = 0
count = 0

for path in sorted(root.rglob("*")):
    if path.suffix.lower() not in EXTS or "/code/" in path.as_posix():
        continue
    with Image.open(path) as original:
        if max(original.size) <= MAX:
            continue
        before_size = original.size
        image = ImageOps.exif_transpose(original)  # respect phone rotation
        image.load()
    image.thumbnail((MAX, MAX), Image.LANCZOS)
    before = path.stat().st_size
    if path.suffix.lower() in (".jpg", ".jpeg"):
        image.convert("RGB").save(path, quality=84, optimize=True, progressive=True)
    else:
        image.save(path, optimize=True)
    after = path.stat().st_size
    saved += before - after
    count += 1
    print(f"{path}: {before_size[0]}x{before_size[1]} -> {image.size[0]}x{image.size[1]}, "
          f"{before // 1024} KB -> {after // 1024} KB")

print(f"{count} image(s) optimised, {saved // 1024} KB saved." if count else "All images already optimised.")
