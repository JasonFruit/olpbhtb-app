\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hankey (P.M.)
  }
  composer = \markup {
    W. G. Fisher
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key aes \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    es4 aes4. es8 es4 aes c4.( bes8) aes4 aes4 aes4. f8 bes[ aes] f4 es2. \bar "||"
    es4 bes'4. a8 bes4 c bes aes2 aes8[ c] es4. c8 c[ bes] aes4 bes2. \bar "||"
    bes4 bes4. c8 des4 des des c2 c4 c4. bes8 aes4 bes8[ aes] g2. \bar "||"
    g4 f4. g8 aes4 f f4 es2 aes4 bes4. aes8 c4. bes8 aes2. \bar "||"

    \break
    es4^\markup { \smallCaps "Refrain:" } es4. g8 bes4. c8 bes4 aes2 aes4 aes4. des8 des4 des des c2 \bar "||" \break
    c4 es4. c8 c[ bes] aes4 bes aes2 f4 es aes bes4. aes8 aes2. \bar "|."
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