\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Azmon (C.M.)
  }
  composer = \markup {
    CARL GLÆSER
  }
  tagline = ##f
}

C.M.

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