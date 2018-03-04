from sqlite3 import connect
from hymn import Hymn

get_hymn_sql = """
select h.olpbhtb_number as hymn_num,
m.description as meter,
a.name as author,
c.name as category,
h.tune_name as tune,
stanza_num,
content as line
from hymn h
inner join meter m
on h.meter_id = m.id
inner join line l
on h.id = l.hymn_id
inner join author a
on h.author_id = a.id
inner join category c
on h.category_id = c.id
where h.olpbhtb_number = ?
order by l.ordinal;
"""

get_first_lines_sql = """
select olpbhtb_number,
first_line
from hymn h
inner join first_line l
on h.id = l.id
order by sortable"""

def parse_terms(term_str):
    in_str = False
    acc = ""
    terms = []

    for c in term_str:
        if c == " " and not in_str:
            terms.append(acc)
            acc = ""
        elif c == '"':
            if in_str:
                terms.append(acc.lower())
                acc = ""
                in_str = False
            else:
                in_str = True
        else:
            acc += c

    if acc != "":
        terms.append(acc)
        acc = ""

    return terms

def build_search_sql(terms):
    
    sql_head = """
select olpbhtb_number,
first_line
from hymn h
inner join first_line l
on h.id = l.id
where
"""
    if terms:
        sql = sql_head + "\nand ".join([
            """h.id in (select hymn_id from line where lower(content) like ?)"""
            for term in terms
        ]) + "\norder by sortable"
    else:
        sql = sql_head + "1 = 1 order by sortable"
        
    return sql

def make_hymn(rows):
    row = rows[0]
    hymn = Hymn(row[0],
                row[1],
                row[2],
                row[3],
                row[4])
    
    stanza_count = max([int(row[5]) for row in rows])

    for i in range(1, stanza_count + 1):
        hymn.stanzas.append(
            [row[6] for row in rows
             if int(row[5]) == i])

    return hymn

        
class HymnData(object):
    def __init__(self):
        self.conn = connect("data/hymnal.sqlite3")
        self.cur = self.conn.cursor()

    def get_hymn(self, num):
        self.cur.execute(get_hymn_sql, (num,))
        rows = self.cur.fetchall()
        if rows:
            return make_hymn(rows)

    def get_first_lines(self):
        self.cur.execute(get_first_lines_sql)
        return self.cur.fetchall()
    def get_search_results(self, terms):
        terms = parse_terms(terms)
        sql = build_search_sql(terms)
        self.cur.execute(sql,
                         ["%%%s%%" % term
                          for term in terms])
        return self.cur.fetchall()
            

if __name__ == "__main__":
    hd = HymnData()
    print(hd.get_hymn(267).to_rst())
    print(hd.get_first_lines())
