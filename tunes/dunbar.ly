\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Dunbar (S.M.)
  }
  composer = \markup {
    Charles Dunbar
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 6/8
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 8 = 108
    
    \partial 4. g4. b8[ a] g d[ fis] a g4. \bar "||"
    d'4. d8[ b] g a4 b8 a4. \bar "||"
    d4. d8[ b] b b[ a] g g4 g8 g[ e]  \bar "||"
    d8 b'[ a] g d[ fis] a g4.^\fermata \bar "|."
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