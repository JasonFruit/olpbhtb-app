\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    A Home in Heaven (P.M.)
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
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 72
    
    \partial 4
    f4 a a f^\fermata a8. bes16 c4 c a^\fermata \bar "||"
    c8 c f4 c c a8 c bes4 g f^\fermata \bar "||"
    c'4 f c c a8 c bes4 g g \bar "||"
    c8 c a4 f f e8 f g2 f4( e) f2. \bar "||"
    c'8 c f4 a f a,8 c bes4( g) f( e) f2. \bar "|."
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