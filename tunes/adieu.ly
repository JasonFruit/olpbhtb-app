\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Adieu (L.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key aes \major
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    es4 aes2 aes4 aes( bes) c aes2 aes4 f( es) \bar "||"
    es4 aes2 aes4 aes4( bes) c es2 c4 es2 \bar "||"
    es4^\fermata f( es) c es( c) aes es'2 c4 bes( aes) \bar "||"
    f4 aes2 aes4 f( es) f aes( c) bes aes2 \bar "|."
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