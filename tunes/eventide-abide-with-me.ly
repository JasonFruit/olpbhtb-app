\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Eventide (10.10.10.10.)
  }
  composer = \markup {
    W. H. Monk
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 2/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    g2 g4 f es2 bes' c4 bes bes aes g1 \bar "||"
    g2 aes4 bes c2 bes aes4 f g a bes1 \bar "||"
    g2 g4 f es2 bes' bes4 aes aes g f1 \bar "||"
    f2 g4 aes g f es aes g2 f es1 \bar "|."
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