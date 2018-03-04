\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Pass Me Not (P.M.)
  }
  composer = \markup {
    William Doane
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key aes \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    c4. bes8 aes8. g16 aes8. f16 es2 aes \bar "||"
    bes4. bes8 aes4 bes c1 \bar "||" \break
    c4. bes8 aes8. g16 aes8. f16 es2 aes \bar "||" 
    bes4. aes8 c4 bes aes1 \bar "||" \break

    es'2^\markup { \small { \smallCaps "Refrain:" } }  c bes4.( aes8) f2 es4 aes c aes bes1 \bar "||"
    c4. bes8 aes8. g16 aes8. f16 es2 aes \bar "||"
    bes4. aes8 c4 bes aes1 \bar "|."
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