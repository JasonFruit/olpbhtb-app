\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Home in Heaven (P.M.)
  }
  composer = \markup {
    W. W. Parks, M. H. Thomas
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
    
    r2 f a a f a4. bes8 c4 c a2 \bar "||"
    c4 d8[ e] f4 c c a8 c bes4 g f2 \bar "||"
    c'2 f4 c c a8 c bes4 g g \bar "||"
    c8 c a4 f f e8 f g2 f f \bar "||"
    r4 c'8 c f4 a f c8 c bes8( g4.) f4( e) f2 \bar "||"
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