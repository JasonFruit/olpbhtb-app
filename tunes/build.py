import os
import codecs
from glob import glob

with codecs.open("app-tmpl.ly", "r", "utf-8") as f:
    tmpl = f.read()
    
for fn in glob("/home/jason/library/olpbhtb/tunes/peculiar/*.ly"):
    with codecs.open(fn, "r", "utf-8") as f:
        ly = f.read()

        start = ly.index("tuneTitle")
        start = ly.index('"', start) + 1
        end = ly.index('"', start)

        title = ly[start:end]

        start = ly.index("tuneComposer")
        start = ly.index('"', start) + 1
        end = ly.index('"', start)

        composer = ly[start:end]

        start = ly.index("tuneMeter")
        start = ly.index('"', start) + 1
        end = ly.index('"', start)

        meter = ly[start:end]
        
        start_tag = "sopranoMusic = {"
        try:
            start = ly.index(start_tag)
            end = start + len(start_tag)
            brackets = 1
            while brackets > 0:
                c = ly[end]
                if c == "{":
                    brackets += 1
                elif c == "}":
                    brackets -= 1
                end += 1
        except ValueError:
            pass

        sopranoMusic = ly[start:end]
        sopranoMusic = sopranoMusic.replace(r"\set fontSize = \voiceFontSize", "")
            
        with codecs.open(fn.split("/")[-1], "w", "utf-8") as g:
            g.write(tmpl % {"sopranoMusic": sopranoMusic,
                            "title": title,
                            "meter": meter,
                            "composer": composer})


for fn in glob("*.ly"):
    os.system("lilypond %s" % fn)
    os.system("convert -density 100 %s %s" % (fn.replace(".ly", ".pdf"),
                                              fn.replace(".ly", ".gif")))
    os.system("rm %s" % fn.replace(".ly", ".pdf"))

for fn in glob("*.gif"):
    os.system("convert %s -fuzz 5%% -trim +repage %s" % (fn, fn))
