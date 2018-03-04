\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lone Pilgrim (11.8.11.8.)
  }
  composer = \markup {
    Commack
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    d4( fis) a4.( b8) a4 fis a4.( b8) a4 b8[ d] d4.( b8) a4 fis e8( d4.) \bar "||" \break
    d4( fis) a4.( b8) a4 d fis2 e4 d e2 \bar "||" \break
    fis4( e) d4.( a8) b4 d a4.( b8) a4 b8[ d] d4.( b8) a4 fis e8( d4.) \bar "||" \break
    d4( fis) a4.( b8) a4 fis a4.( b8) d4 e d2 \bar "|."
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