\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Jesus, Saviour, Pilot Me (7s. 6 lines)
  }
  composer = \markup {
    J. E. Gould
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 3/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    d8. c16 bes4. a8 \times 2/3 { c8[ bes] g } f2 \bar "||"
    es'8. d16 d4. c8 bes a bes2 \bar "||"
    c8. c16 c4. f,8 g f bes2 \bar "||"
    c8. c16 c4. f,8 g f bes2 \bar "||"
    d8. c16 bes4. a8 \times 2/3 { c8[ bes] g } f2 \bar "||"
    es'8. d16 d4. c8 bes a bes2 \bar "|."
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