\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Condescension (C.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key c \major
 \autoBeamOff
 \time 4/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2 g2 g4 d' d c8[ d] e4 d c2 \bar "||"
   c2 d4 d8[ e] f4 g8[ e] d2 \bar "||" \break
   g4.( e8) d8[ c] d[ e] g,4 g8[ a] c[ d] e4 d2 \bar "||"
   d4.( c8) a8[ g] f[ g] a4 c8[ a] g1 \bar "|."
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