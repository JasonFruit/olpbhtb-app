\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Bealoth (P.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    e4 cis'4. cis8 cis4 b a2. \bar "||"
    a4 b b b cis8[ b] a2. \bar "||" \break
    e4 cis'4. cis8 cis4 b a a a \bar "||"
    a4 b b b cis8[ b] a2. \bar "||" \break

    e8[ fis] gis4 a b cis d2. \bar "||"
    b4 cis b8[ cis] d4 cis b2. \bar "||" \break
    cis8.[ d16] e4 cis a e fis4. fis8 e4 \bar "||"
    a4 b b b cis8[ b] a2. \bar "|."
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