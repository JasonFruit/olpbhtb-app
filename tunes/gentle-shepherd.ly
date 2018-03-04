\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Gentle Shepherd (8.7.8.7.D)
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
    
    f2. a4 g f g f d c2. \bar "||"
    f2. d4 f a a8[ g] f4 g1 \bar "||"
    a2. a4 g f g f d c2. \bar "||"
    f2. d4 f a a g f1 \bar "||"
    c'2. c4 d c a a g f2. \bar "||"
    f2. d4 f a a8[ g] f4 g1 \bar "||"
    a2. a4 g f g f d c2. \bar "||"
    f2. d4 f a a g f1 \bar "|."
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