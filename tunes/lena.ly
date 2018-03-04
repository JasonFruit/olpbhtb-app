\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lena (8.8.7.D)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key fis \minor
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 76
    
    fis4 gis a4. gis8 a4 b cis cis8 r8 \bar "||"
    cis4 eis fis cis8 r d[ cis b] a gis4 gis8 r \bar "||" \break
    a4 gis fis e fis gis a8.([ b16 cis8. d16] e4.) r8 \bar "||"
    fis4 eis fis fis8 r d4 cis b b8 r \bar "||" \break
    cis4. b8 a4. gis8 a[ fis] a[ b] cis4 cis8 r \bar "||"
    fis8( cis4) cis8 d( b4) gis8 a[ fis] gis4 fis1 \bar "|."
    
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