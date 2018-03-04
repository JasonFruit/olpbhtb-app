\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Duane Street (L.M.D.)
  }
  composer = \markup {
    George Coles
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key aes \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   es4 aes c c aes bes des des \bar "||"
   bes c aes g aes bes es, es \bar "||" \break
   es aes c c aes bes des des \bar "||"
   bes c aes bes8[ c] des[ bes] aes4 g aes \bar "||" \break
   c4 es c c es des bes bes \bar "||"
   des c aes g aes bes es, es \bar "||" \break
   es aes c c aes bes des des \bar "||"
   bes c aes bes8[ c] des[ bes] aes4 g aes \bar "|."
 }
}

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