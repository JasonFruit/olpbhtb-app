\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Disciple (8s,7s.D.)
  }
  composer = \markup {
    Arr. from Mozart
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
    
    g4. g8 g4 g b4. a8 a[ g] g4 \bar "||"
    a4. a8 a4 a c4. b8 b4( a) \bar "||"
    g4. g8 g4 g b4. a8 a[ g] g4 \bar "||"
    a4. a8 a[ c] b[ a] g4 fis g r \bar "||"
    a4. a8 a4 a a4. g8 fis[ e] d4 \bar "||"
    b'4. b8 b4 b c4. b8 b4( a) \bar "||"
    g4. g8 g4 g b4. a8 a[ g] g4 \bar "||"
    a4. a8 a[ c] b[ a] g4 fis g r \bar "|."
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