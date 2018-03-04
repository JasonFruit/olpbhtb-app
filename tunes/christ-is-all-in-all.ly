\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Christ is All In All (8s,7s refrain)
  }
  composer = \markup {
    William Ruebush
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
    
    b4 d b g \noBreak g e a8[ g] fis[ e] \bar "||"
    d4 g g b \noBreak b d a2 \bar "||" \break
    b4 d b g g e a8[ g] fis[ e] \bar "||"
    d4 g b d b a g2 \bar "||" \break

    a4^\markup { \smallCaps "Refrain:" } d d2 b4 d d2 \bar "||"
    a4 d d d cis cis d2 \bar "||"
    b4 d b g g e a8[ g] \bar "||"
    fis8[ e] d4 g a b g2. r4 \bar "|."
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