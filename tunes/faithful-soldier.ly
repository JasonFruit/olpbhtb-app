\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Faithful Soldier (7s,6s)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 2
      bes2 bes4 f g bes c4.( bes8) d4 \bar "||"
      c4 bes g bes g f2 }
    f'2 d4 c bes8[ c] d4 f2 g4 \bar "||"
    f4 d c bes8[ c] d4 g,8([ f g a] bes2~  bes) \bar "||"
    bes2 bes4 f g bes c4.( bes8) d4 \bar "||"
    c4 bes g bes g f2^\fermata \bar "|."
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