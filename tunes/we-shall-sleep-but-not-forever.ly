\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Weep Not For Me (P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 3/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 72
    
    \partial 4
    g8 aes bes4. d8 c bes bes es4. \bar "||"
    g,8 aes bes4. d8 c bes f'4( es) \bar "||"
    es8 f g4. es8 f g es c4. \bar "||"
    f8^\fermata d16[ c] bes8 es g4 f es2 \bar "||"
    \break
    g,8( \mark \markup { \tiny { \smallCaps "Refrain:" } } aes) bes4.( d8) c bes bes( es4.) \bar "||"
    g,8( aes) bes4.( d8) c bes f'4( es) \bar "||"
    es8 f g4. es8 f g es c4. \bar "||"
    f8^\fermata d16[ c] bes8 es g4 f es2 \bar "|."
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