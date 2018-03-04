\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Conquering Soldier (P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key fis \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2
    cis2 b4. a8 fis4 fis a4. b8 cis4 \bar "||"
    cis4 b4. a8 fis4 e fis2 \bar "||" 
    cis'2 b4. a8 fis4 fis a4. b8 cis4 \bar "||"
    cis4 b4. a8 fis4 e fis2 \bar "||" 
    fis2 a4. b8 cis4 e fis2 fis4 \bar "||"
    fis4 e4. fis8 e4 d cis2. \bar "||"
    d8[ cis] b4. a8 fis4 fis a4. b8 cis4 \bar "||"
    cis4 b4. a8 fis4 e fis1 \bar "|."
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