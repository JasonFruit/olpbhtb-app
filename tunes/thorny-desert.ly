\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Thorny Desert (8.7.8.7.D)
  }
  composer = \markup {
    William Walker
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
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    b4 b8 a[ g] e g4 g8 e[ d] b \bar "||"
    d8[ e] g b4 b8 a[ g] a g4. \bar "||"
    b4 b8 a[ g] e g4 g8 e[ d] b \bar "||"
    d8[ e] g b4 b8 a[ g] a g4. \bar "||"
    g4 b8 d4 e8 d4 b8 a g4 \bar "||"
    d'4 c8 b[ a] b e,[ fis] g d4. \bar "||"
    d'4 c8 b[ a] b g4 g8 e[ d] b \bar "||"
    d8[ e] g b4 b8 a[ g] a g4. \bar "|."
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