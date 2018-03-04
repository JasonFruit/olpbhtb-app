\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Vernon (L.M. 6 lines)
  }
  composer = \markup {
    Jeremiah Ingalls
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 2/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 88
    
    \repeat volta 2 {
      r4 g b b b a8[ g] b4 a8[ g] e4.
      fis16[ g] a4. b8 a4 e g g8.[ a16] g2
    }
    r4 d' g4. fis8 e4. d8 e[ d] b[ a] g4.
    a8 b4 d e b8[ a] g4 e e2 \bar "|."
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