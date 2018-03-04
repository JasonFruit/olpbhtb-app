\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Greenville (8.7.8.7.D)
  }
  composer = \markup {
    Jean-Jacques Rousseau
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 2/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a4 a8[ g] f4 f g g a8[ g] f4 \bar "||"
    c'4 c8[ bes] a4 a g8[ f] g[ a] f2 \bar "||" \break
    a4 a8[ g] f4 f g g a8[ g] f4 \bar "||"
    c'4 c8[ bes] a4 a g8[ f] g[ a] f2 \bar "||" \break
    a4 a8[ bes] c4 c d d c8[ bes] a4 \bar "||"
    a4 a8[ bes] c4 c d d c2 \bar "||" \break
    a4 a8[ g] f4 f g g a8[ g] f4 \bar "||"
    c'4 c8[ bes] a4 a g8[ f] g[ a] f2 \bar "|." 
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