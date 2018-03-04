\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Avon (C.M.)
  }
  composer = \markup {
    Hugh Wilson
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key aes \major
 \autoBeamOff
 \time 3/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   es4 aes2 f4 es2 aes8[ bes] c2 bes4 aes2 \bar "||"
   c4 es2 c8[ bes] aes2 c4 bes2 \bar "||"
   es4 c2 bes4 aes2 c4 des2 c4 bes2 \bar "||"
   c4 es,( f) aes8[ bes] c2 bes4 aes2 \bar "|."
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