\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    %(title)s (%(meter)s)
  }
  composer = \markup {
    %(composer)s
  }
  tagline = ##f
}

%(sopranoMusic)s

#(set! paper-alist (cons '("phone" . (cons (* 3 in) (* 5 in))) paper-alist))

\paper {
  #(set-paper-size "phone")
}

\score {
  <<
    \new Staff {
      \new Voice {
	\sopranoMusic
      }
    }
  >>
}