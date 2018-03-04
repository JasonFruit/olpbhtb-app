\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Thomasson (S.M.)
  }
  composer = \markup {
    William Hauser
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
    f4 es2 aes4 c2 bes4 aes2 \bar "||"
    c4 es2 f4 es8( c4.) c4 bes2 \bar "||" \break
    c4 es2 f4 es8( c4.) bes4 aes2 c4 f,2 \bar "||"
    aes4 es2 aes4 c2 bes4 aes2 \bar "|."
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