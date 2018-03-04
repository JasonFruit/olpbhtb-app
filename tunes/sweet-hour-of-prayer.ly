\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Sweet Hour (L.M.D.)
  }
  composer = \markup {
    William Bradbury
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 6/8
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 8
    d8 fis4 g8 a4 a8 b4 cis8 d4 \bar "||"
    b8 a4 fis8 fis[ e] d e4 fis8 e4 \bar "||" \break
    d8 fis4 g8 a4 a8 b4 cis8 d4 \bar "||"
    b8 a4 fis8 fis[ e] d fis4 e8 d4 \bar "||" \break
    a'8 d4 cis8 d4 b8 a4 fis8 a4 \bar "||"
    a8 d4 cis8 d4 b8 a4 fis8 e4 \bar "||" \break
    d8 fis4 g8 a4 a8 b4 cis8 d4 \bar "||"
    b8 a4 fis8 fis[ e] d fis4 e8 d4 \bar "|."
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