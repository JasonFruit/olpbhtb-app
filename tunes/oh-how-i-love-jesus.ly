\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    O How I Love Jesus (C.M. refrain)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key aes \major
  \autoBeamOff
  \time 6/8
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 8
    aes8 c4 c8 c[ bes] c aes4 aes8 aes4 \bar "||"
    aes8 bes4 bes8 bes[ aes] bes c4.( es4) \bar "||"
    des8 c4 c8 c[ bes] c aes4 aes8 aes4 \bar "||"
    aes8 bes[ c] des c4 bes8 aes2. \bar "||"
    \break
    c4.^\markup { \tiny { \smallCaps "Refrain:" } } c8 bes c aes4. aes \bar "||"
    bes4. bes8 aes bes c4. es4( des8) \bar "||"
    c4. c8 bes c aes4. aes4 \bar "||"
    aes8 bes[ c] des c4 bes8 aes4.~ aes4 \bar "|."
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