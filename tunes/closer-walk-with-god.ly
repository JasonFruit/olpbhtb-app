\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Closer Walk (C.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 6/8
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 90
    
    \partial 4.
    f4. a8[ g] f f[ d] c f4 f8 a[ c] \bar "||"
    d c4 a8 g[ f] g f4. \bar "||" \break
    f4. a8[ g] f f[ d] c f4 f8 a[ c] \bar "||"
    d c4 a8 g[ f] g f4. \bar "||" \break
    a4. c4 bes8 a4 bes8 c4 bes8 a4 \bar "||"
    c8 d[ c] a c[ d] f f4. \bar "||" \break
    f4. c4 a8 g[ f] d f4 f8 a[ c] \bar "||"
    d c4 a8 g[ f] g f4. \bar "|."
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