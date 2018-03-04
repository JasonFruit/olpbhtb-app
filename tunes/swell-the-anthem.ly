\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Refuge (7.7.7.7.D)
  }
  composer = \markup {
    Minshall
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    es4 g bes2. bes4 c bes es1 \bar "||"
    es,4 f g2. g4 f g es1 \bar "||"
    es4 g bes2. bes4 c bes es1 \bar "||"
    es,4 f g2. g4 f g es1 \bar "||"
    bes'4 bes c2. es4 d c bes1 \bar "||"
    bes4 es d2. bes4 c d bes1 \bar "||"
    es,4 g bes2. bes4 c bes es1 \bar "||"
    es,4 f g2. g4 f g es1 \bar "|."
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