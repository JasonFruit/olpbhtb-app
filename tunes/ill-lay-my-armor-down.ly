\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    I'll Lay My Armor Down (C.M. refrain)
  }
  composer = \markup {
    Joseph Moon
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
    
    \repeat volta 2 {
      \partial 2
      f2 c'4 c c a c c8[ d] f,4. \bar "||"
      f8 
    }
    \alternative {
      { a4. g8 f4 a4 \once \override Staff.TimeSignature #'break-visibility = ##(#f #f #f) \time 2/4 c2 }
      { \once \override Staff.TimeSignature #'break-visibility = ##(#f #f #f) \time 4/4 a4. g8 f4 a8[ g] f2 \bar "||" }
    } \break
    c'2 f4 d c d f d c4. \bar "||"
    c8 a4. g8 f4 a c2 \bar "||"
    c2 f4 d c d f d c4. \bar "||"
    f,8 a4. g8 f4 a8[ g] f2 \bar "|."
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