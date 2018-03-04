\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hopewell (C.M.D.)
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
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \repeat volta 2 {
     \partial 4 es8[ g] bes2 g8[ f] g2 bes4 es2 c8[ bes] g2
     es8[ g] bes2 es,4 g2 f4 es2^\markup { \smallCaps { "Fine." } }
   }
   bes'4 es2 g8[ es] c2 d8[ es] f2 es8[ c] bes2
   g8[ bes] c2 bes8[ c] es2 f4 es2^\markup { "D.C." } \bar "||"
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