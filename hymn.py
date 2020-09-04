hymn_tmpl = """*Tune: %(tune)s*
"""

stanza_tmpl = """
| %(stanza_num)s %(stanza)s

"""

def tune_name_to_fn(tune):
    allowed = "abcdefghijklmnopqrstuvwxyz-"
    fn = tune.lower().replace(" ", "-")
    fn = "".join([c for c in fn
                  if c in allowed])
    fn += ".gif"
    return fn
    

class Hymn(object):
    def __init__(self,
                 num,
                 meter,
                 author,
                 category,
                 tune):
        self.num = num
        self.meter = meter
        self.author = author
        self.category = category
        self.tune = tune
        self.stanzas = []
    def to_rst(self):

        # we should use os.path.join here, but ReStructuredText eats
        # Windows' backslashes, so we force unixy slashes, and that
        # seems to work anyway
        # rst = ".. image:: " + "tunes/" + tune_name_to_fn(self.tune) + "\n\n"
        rst = ""

        for i in range(len(self.stanzas)):
            rst += stanza_tmpl % {"stanza_num": str(i+1).ljust(3, " "),
                                  "stanza": "\n| ".join(self.stanzas[i])}

        return rst
            
