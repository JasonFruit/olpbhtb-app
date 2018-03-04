\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Rhode Island (C.P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key c \minor
  \autoBeamOff
  \time 2/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 96
    
    es2 g4 g g es8.[ g16] bes4 bes bes^\fermata \bar "||"
    g8[ bes] c4 c es8[ d] c[ bes] g4 g f4.^\fermata r8 \bar "||"
    es4.( f8) g4 c bes8.[ c16] d4 c2 \bar "||"
    r4 c4 es es es g8.[ f16] es4 es es \bar "||"
    bes4 c c es8[ d] c[ bes] g4 g f2 \bar "||"
    es2 g4 c bes8.[ c16] d4 c2 \bar "|."
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