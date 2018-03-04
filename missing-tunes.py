import os
from glob import glob
from sqlite3 import connect
conn = connect("data/hymnal.sqlite3")
cur = conn.cursor()

cur.execute("select tune_name from hymn group by tune_name order by tune_name;")

def tune_name_to_fn(tune):
    allowed = "abcdefghijklmnopqrstuvwxyz-"
    fn = tune.lower().replace(" ", "-")
    fn = "".join([c for c in fn
                  if c in allowed])
    fn += ".gif"
    return fn
    

tune_files = [tune_name_to_fn(row[0])
              for row in cur.fetchall()]

for fn in tune_files:
    if not os.path.exists(os.path.join("tunes", fn)):
        print(fn)

