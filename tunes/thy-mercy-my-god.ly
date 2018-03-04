\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Thy Mercy My God (11s)
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
  \time 9/8
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 70
    
    \override Score.TimeSignature #'stencil = #(double-time-signature "9" "8" "6" "8")
    \partial 2
    g8 b a g
    \override Score.TimeSignature #'stencil = ##f
    b4.~ b4 b16 b a8 g e g4.~ g4 \bar "||"
    g8 b d e \time 6/8 d b16[ a] g8 g a b \time 9/8 a4.~ a4 \bar "||"
    g8 b a g b4.~ b4 b16 b a8 g e g4.~ g4 \bar "||"
    g8 b d e \time 6/8 d b16[ a] g8 b b a  \time 9/8 g4.~ g4 \bar "|."
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