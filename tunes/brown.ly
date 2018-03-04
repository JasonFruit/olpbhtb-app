\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Brown (C.M.)
  }
  composer = \markup {
    William Bradbury
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    f4 bes4. c8 d4 bes g4. a8 bes4 \bar "||"
    g4 f f bes d c2. \bar "||"
    f,4 d'4. c8 bes4 d c4. bes8 g4 \bar "||"
    bes8[ g] f4 bes a c bes2.  \bar "|."
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