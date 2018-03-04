\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Fountain (C.M. refrain)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    c8[ e] g4. a8 g4 c c4. a8 g4 \bar "||"
    c,8[ e] g4. g8 a[ g] e[ c] d2. \bar "||"
    c8[ e] g4. a8 g4 c c4. a8 g4 \bar "||"
    c8[ d] e4. c8 d4 e c2. \bar "||"

    c8[ d] e4. c8 d4 e c4.( a8 c4) \bar "||"
    a4 g4. g8 a[ g] e[ c] d2. \bar "||"
    c8[ e] g4. a8 g4 c c4. a8 g4 \bar "||"
    c8[ d] e4. c8 d4 e c2. \bar "|."
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