\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Come My Heart (7.6.7.6.D peculiar)
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
    \set Score.tempoHideNote = ##t \tempo 4 = 78
    
    \repeat volta 2 {
      g4. g8 g4 g b4. a8 g2 \bar "||"
      g4. b8 g4 e8[ d] e[ g] g2.
    }
    g4 b8[ d] d4 d e d b2 \bar "||"
    b4. a8 b4 a b8[ d] d2. \bar "||"
    d4 d b g8[ b] a4 g e2 \bar "||"
    g4. b8 g4 e8[ d] e[ g] g2. \bar "|."
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