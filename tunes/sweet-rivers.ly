\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Sweet Rivers (C.M.D.)
  }
  composer = \markup {
    More
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2 f a4 a8[ f] g4 g8[ a] c4 c8[ g] a2 \bar "||"
    c2 d8[ c] a4 c8[ a] g4 f2 \bar "||"
    r2 f a4 a8[ f] g4 g8[ a] c4 c8[ g] a2 \bar "||"
    c2 d8[ c] a4 c8[ a] g4 f2 \bar "||"
    r2 c'2 f4 f d8[ e] f4 e8[ c] d[ f] c2 \bar "||"
    c2 f4 f c4 a8[ c] d2 \bar "||"
    c2 f4 f c a c c8[ bes] a2 \bar "||"
    c2 d8[ c] a4 c8[ a] g4 f1 \bar "|."
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