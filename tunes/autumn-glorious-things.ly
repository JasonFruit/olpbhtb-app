\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Autumn (8.7.8.7.D)
  }
  composer = \markup {
    FRANÇOIS BARTHÉLEMON
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   g4. a8 b2. a4 g4. e8 d2 b \bar "||"
   g'4. a8 b2. a4 b d a1  \bar "||"
   g4. a8 b2. a4 g4. e8 d2 b \bar "||"
   g'4. e'8 d2. b4 a4. b8 g1 \bar "||"  
   b4. c8 d2~ d4. e8 d4. b8 d2 b \bar "||"
   g4. a8 b2( c4) b a g g2( fis)  \bar "||"
   g4. a8 b2. a4 g4. e8 d2 b \bar "||"
   g'4. e'8 d2. b4 a4. b8 g1 \bar "|."
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