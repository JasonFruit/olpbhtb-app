\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Salvation (C.M.D.)
  }
  composer = \markup {
    Richard Boyd
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key e \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      r2 b g4 e fis d e e8[ fis] g4 \bar "||"
      a b4. g8 a[ g] fis4 e1
    }
    r2 b'2 d4 b g b8[ c] d4 b a2 \bar "||"
    g2 a4 a b d e2 \bar "||"
    e2 d4 b b a8[ g] e4 e8[ fis] g4 \bar "||"
    a4 b4. g8 a[ g] fis4 e2^\fermata \bar "|."
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