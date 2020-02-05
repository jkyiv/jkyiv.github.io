\version "2.18.2"

\header {
  title = "Clean Up"
  composer = "Joel Swanson"
  date = "2020-02-04"
}

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  g4 e g e | f8 e d e( e4) r |
  e c e c | d8 c b c( c4) r8
  c8 | a'8 a4 g e8 c c | f8 g4 e
  c8 c c | d e4 c r8 a4 | d e g2 | 
  
}

VerseZero = \lyricmode {
  Clean up, clean up, | e -- very -- one sings:
  clean up, clean up, | all of my things.
  I | may not want to, but the | time has come
  to put my | toys a -- way, then | I'll be done!
}
VerseOne  = \lyricmode {
  Pick up, pick up, | e -- very -- one say:
  pick up, pick up, | toys e -- very day.
  Pick | up this toy, and put it | in its place,
  then grab a -- | no -- ther toy, and | work with grace.
}
VerseTwo = \lyricmode {
  Work -- ing, work-- ing | find the next thing;
  work -- ing, work -- ing, | serv -- ing my King.
  I | look a -- round and find a -- | no -- ther toy,
  I put it | in its spot, and | work for joy!
}

\score{
  <<
    \new Voice = "one" {
      \autoBeamOn
      \melody
    }
    \new Lyrics \lyricsto "one" \VerseZero
    \new Lyrics \lyricsto "one" \VerseOne
    \new Lyrics \lyricsto "one" \VerseTwo
  >>
  \layout { }
  \midi { }
}