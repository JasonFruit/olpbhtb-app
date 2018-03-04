\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Need (P.M.)
  }
  composer = \markup {
    Robert Lowry
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key aes \major
  \autoBeamOff
  \time 3/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    aes4 c4. bes8 aes g aes2 aes4 aes4.( bes8) aes[ f] es2 \bar "||"
    es4 bes'4. c8 bes es, c'2 aes4 g4.( aes8) g[ f] es2 \bar "||"
    \break
    c'4^\markup { \smallCaps { "Refrain:" } } c4. aes8 des c c4 bes2 bes4. aes8 c bes bes4 aes \bar "||"
    aes4 aes4. bes8 aes f es4 aes bes c4.( aes8) bes4 aes2 \bar "|."
    
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