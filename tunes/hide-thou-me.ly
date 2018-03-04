\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hide Thou Me (P.M.)
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
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    es8. es16 aes4. c8 bes8. aes16 es4 aes2 bes2 aes8[ bes] c2 \bar "||"
    bes8 aes aes4. f8 aes8. f16 es4 aes2 bes2 c4 aes2 \bar "||"
    aes8. aes16 des4. des8 aes8. bes16 c4 c \bar "||"
    bes8. aes16 bes4. bes8 aes8. bes16 c4 c \bar "||"
    bes8 aes aes4. f8 aes8. f16 es4 aes2 c2 bes4 aes2 \bar "|."
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