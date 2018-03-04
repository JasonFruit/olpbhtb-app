\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Webster (S.M.)
  }
  composer = \markup {
    
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
    
    r2 g b4 a b d g,2 \bar "||"
    d'2 g4 d e8[ d] b4 a1 \bar "||"
    d2 e4 e d e8[ fis] g4 e d2 \bar "||"
    g,2 b4 b a8[ g] a4 g1 \bar "|."
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