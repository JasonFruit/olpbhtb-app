\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Evan (C.M.)
  }
  composer = \markup {
    W. H. Havergal
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key aes \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   es2 es4 aes c2 bes aes4 f es2 \bar "||"
   es2 es4 aes c2 aes bes1 \bar "||"
   des2 c4 bes aes2 bes c4 aes f2 \bar "||"
   es2 es4 aes c2 bes aes1 \bar "|."
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