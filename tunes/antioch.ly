\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Antioch (C.M.)
  }
  composer = \markup {
    Arr. Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key d \major
 \autoBeamOff
 \time 2/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   d4 cis8. b16 a4. g8 fis4 e d4. \bar "||"
   a'8 b4. b8 cis4. cis8 d4. \bar "||"
   d8 d[ cis] b[ a] a8.[ g16 fis8] d'8 d[ cis] b[ a] a8.[ g16 fis8] \bar "||"
   fis8 fis fis fis fis16[ g] a4. g16[ fis] e8 e e e16[ fis] g4.  \bar "||"
   fis16[ e] d8( d'4)  b8 a8.[ g16 fis8] g fis4 e d2 \bar "|."
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