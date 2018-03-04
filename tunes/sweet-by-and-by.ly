\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Sweet By-and-By ()
  }
  composer = \markup {
    Joseph Webster
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    g8. a16 b4 a8 g a4 g8 e d2 r4 \bar "||"
    g8. a16 b4 b8. b16 d4 d8. b16 a2 r4 \bar "||"
    g8. a16 b4 a8 g a4 g8 e d2 r4 \bar "||"
    g8. a16 b4 a8 g a4 g8 fis g2. \bar "||" \break
    
    b8.^\markup { \smallCaps "Refrain:" } c16 d2. d8. b16 a2. \bar "||"
    a8. b16 c4 c8 c c4 b8 a b2. \bar "||"
    b8. c16 d2. b8. a16 g2. \bar "||"
    fis8 e d4 g8 b a4 g8 fis g2. \bar "|."
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