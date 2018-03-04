\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Consolation (Webbe) (P.M.)
  }
  composer = \markup {
    Samuel Webbe
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 2/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a2 fis4 d b'4. a8 a2 g4.( a8) b4 cis d4.( a8) a2 \bar "||" \break
    fis2 fis4 fis g4. g8 b2 a2 gis4 gis a1 \bar "||" \break
    d2 cis4 b a4. g8 fis2 d'2 e8[ d] cis[ b] a4.( g8) fis2 \bar "||" \break
    a4( fis') fis d d b2 g4 fis2 e4. e8 d1 \bar "|."
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