import sys
import fontforge


def main(ttc):
    for ttf in fontforge.fontsInFile(ttc):
        f = fontforge.open(f"{ttc}({ttf})")
        f.generate(f"{ttf}.otf")


if __name__ == "__main__":
    for arg in sys.argv:
        main(arg)
