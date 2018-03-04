\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Royal Proclamation (P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    f4. a8 c4. c8 d4 f d c \bar "||"
    c4 c a c d d d c \bar "||"
    f4. g8 f8[ d] c4 f f8[ g] f[ d] c4 \bar "||"
    d4. c8 d[ e] f[ d] c4 a g8[ f] d4 \bar "||"
    f4.^\markup { \small { \smallCaps "Refrain:" } }  g8 f4. g8 a4 c g8[ f] d4 \bar "||"
    d'4. c8 d[ e] f[ d] c4 a g8[ f] d4 \bar "||"
    f4. g8 f2 \bar "|."
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