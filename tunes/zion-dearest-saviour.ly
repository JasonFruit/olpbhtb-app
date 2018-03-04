\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Zion (8s,7s,4s)
  }
  composer = \markup {
    Thomas Hastings
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 3/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 72
    
    \partial 4
    a8. a16 a4 fis d'8. a16 b4 a \bar "||"
    d8. d16 e8. e16 d4 cis d2 \bar "||"
    a8. a16 a4 fis d'8. a16 b4 a \bar "||"
    d8. d16 e8. e16 d4 cis d2 \bar "||"
    fis,8. fis16 fis4 d \bar "||"
    fis8. fis16 e8. e16 d4 cis d2 \bar "||"
    a'8. a16 a4 fis \bar "||"
    a8. a16 g8. g16 fis4 e fis2 \bar "|."
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