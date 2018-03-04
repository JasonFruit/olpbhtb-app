\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Jewett (6.6.6.6.D)
  }
  composer = \markup {
    Arr. from von Weber
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    bes2 g4 es8[ g] f4. aes16[ g] f4 r \bar "||"
    g2 es4 g8[ bes] bes4. aes8 g4 r \bar "||"
    es'2 c4 aes8[ c] bes4. bes8 g4 \bar "||"
    es8[ g] bes8[ aes] f4 aes8[ g] es4 f2( bes) \bar "||"
    bes2 g4 es8[ g] f4. aes16[ g] f4 r \bar "||"
    g2 es4 g8[ bes] bes4. b8 c4 r \bar "||"
    es2 c4 aes8[ c] bes4. bes8 g4 \bar "||"
    es8[ g] bes8. es,16 g2 f4 es2. r4 \bar "|."
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