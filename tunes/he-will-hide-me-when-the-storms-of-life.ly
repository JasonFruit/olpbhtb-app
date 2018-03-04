\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    He Will Hide Me (P.M.)
  }
  composer = \markup {
    James McGranahan
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 9/8
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4.
    d8[ g] a b4. b c8[ b] a b4. g \bar "||"
    d8[ g] b d4.~ d4 d8 e[ d] c b2. \bar "||"
    b8[ a] b c4. a a8[ g] a b4. g \bar "||"
    g8[ fis] g a4.~ a4 g8 fis[ e] fis g2. \bar "||"
    \break
    e8^\markup { \small { \smallCaps "Refrain:" } } [ g] c e4. c d,8[ g] b d4. b \bar "||"
    d,8[ fis] a c4.~ c8[ d] c b4 c8 d4. b \bar "||"
    e,8[ g] c e4. c d,8[ g] b d4. b \bar "||"
    d,8[ fis] a c4.~ c8[ d] c b4 a8 g2. \bar "|."
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