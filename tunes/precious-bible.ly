\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Precious Bible (8s,7s. 6 lines)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 2/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a4 a8[ b] cis4 a b cis a8[ fis] e4 \bar "||"
    a4 b cis8[ d] e4 cis8[ a] b4 a2 \bar "||"
    a4 a8[ b] cis4 a b cis a8[ fis] e4 \bar "||"
    a4 b cis8[ d] e4 cis8[ a] b4 a2 \bar "||"
    a8[ b] cis[ d] e4 e fis fis e e \bar "||"
    e4. fis8 cis[ b] a[ b] cis4 b a2 \bar "|."
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