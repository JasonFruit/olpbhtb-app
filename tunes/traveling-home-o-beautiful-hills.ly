\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Traveling Home (P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 60
    
    \partial 4
    d8[ g] g4.( e8) g4 g( b) a g4.( e8) g[ e] d2 \bar "||"
    d8[ g] g4.( e8) g4 g( a) b8[ d] d2 b8[ d] d2 \bar "||"
    d4^\fermata e( d) b d( b) g d'4.( g,8) b4 a8( g4.) \bar "||"
    e8[ g] g4.( e8) g4 d4.( e8) g[ a] b4.( g8) a4 g2 \bar "||"

    d8^\markup { \small { \smallCaps "Refrain:" } }[ g] g4. e8 g4 g( b) a g4. e8 g[ e] d2. \bar "||"
    g4.( e8) g4 g( a) b8[ d] d4. a8 b8[ d] d2 \bar "||"
    d4^\fermata e( d) b d b g d'4.( g,8) b4 a8( g4.) \bar "||"
    e8[ g] g4.( e8) g4 d4. e8 g[ a] b4.( g8) a4 g2 \bar "|."
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