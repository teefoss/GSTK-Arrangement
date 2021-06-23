#(set-global-staff-size 19)

\version "2.19.83"

\paper {
    #(set-paper-size "letter")
    #(define fonts
        (set-global-fonts
            #:music "haydn"
            #:brace "haydn"
            #:roman "Old Standard TT"
            #:sans "sans-serif"
            #:typewriter "monospace"
            #:factor (/ staff-height pt 20)
    ))
    top-margin = 0.625\in
    bottom-margin = 0.625\in
    left-margin = 0.625\in
    right-margin = 0.625\in
    indent = 0.75 \in
    ragged-last-bottom = ##f
    footnote-separator-markup = ##f
    tagline = ##f
}

\header {
    title = \markup { \normal-text "4 Variations" }
    subtitle = \markup { \normal-text "on God Save the King / My Country, 'Tis of Thee" }
    instrument = \markup { \normal-text "for violin" }
    composer = "J.C. Bach"
    arranger = "arr. Thomas Foster"
}

theme = \relative c'' {
    d4\f^"Theme" d( e) \appoggiatura{d8} cis4.\trill d8 e4
    fis fis e8.( fis32 g) fis4( e d)
    e8.( g32 e) d4 cis\trill cis( d2)
    a'4 a a \appoggiatura{b8} a4.\trill g8 fis4
    g4 g g \appoggiatura{a8} g4.\trill fis8 e4
    fis8.(\trill e32 fis) g8( fis) e( d)
    fis4.\trill g8 a4
    \appoggiatura{cis16} b8 a16 g fis4 e\trill d2 r4 \bar "||"
}

var_skipping = \relative c' {
    d8^"Var. 1" \appoggiatura{e'8} d16[ cis] d8 a' fis e
    d8 cis16 b cis8 d e cis
    d, \appoggiatura{g'8} fis16[ e] fis8 a b g16 e
    a8 fis16 d g8 e16 cis d8 fis16 d
    b8 e16 g a,8 d16 fis g,8 cis16 e
    e d cis d d8 a fis a
    d, \appoggiatura{e'8} d16[ cis] d8 a fis' d
    a' fis16 d g8 e16 cis fis8 a
    a,,8 \appoggiatura{d'8} cis16[ b] cis8 a e' cis
    g'8 e16 cis fis8 d16 b e8 cis16 a
    fis'8 d16 a' g8 a16 fis e8 fis16 d
    fis8^"(check)" d16 d' g,8 e16 d' a8 fis16 d'
    b8 g16 e a8 fis16 d g8 e16 cis
    d8 a16 fis d4 r \bar"||"
}

var_running = \relative c' {
    r16^"Var. 2" d16 fis a d a fis' d a' fis e d
    cis a a a cis a d a e' a, cis a
    fis' a, d fis a fis e\trill d b' g fis\trill e
    a fis e\trill d g e d\trill cis d fis e\trill d
    g, b' g e a, a' fis d a g' e cis
    d a fis a d, a b cis d e fis g
    a d, fis a d fis, a d fis a, d fis
    a a, fis' a, g' a, e' a, fis' a, d a
    g'^"(check)" a,, e' a cis e, a cis e a, cis e
    g a, e' a, fis' a, d a e' a, cis a
    fis' d a' fis g a fis g e fis d e
    fis^"(check)" d d' d, g e d' e, a fis d' a
    b g fis\trill e a fis e\trill d g e d\trill cis
    d a fis a d,4 r \bar"||"
}

var_leaping = \relative c' {
    d8_\markup{\italic staccato}^"Var. 3" d' fis, d' g, e'
    a,, cis' b, d' cis, e'
    d, fis' d fis g, g'
    a, fis' a,, e'' b, d'
    g,, e'' a,, d' a, cis'
    d, d' d, a' d, fis
    
    a' d,, a'' fis, a' a,
    a'( d,) g( e) fis( d)
    g a,, g'' cis,, g'' e,
    g'( a,) fis'( a,) e'( a,)
    a, fis''( g fis e d)
    d, fis' e, g' fis, a'
    g, g' a, fis' a,, e''
    d, d' fis a d4 \bar"||"
}

var_flowing = \relative c' {
    \times 2/3{d8(^"Var. 4" fis a)} \times 2/3{d( a fis)} \times 2/3{e'( b g)}
    \times 2/3{a,( cis e)} \times 2/3{cis'( a d)} \times 2/3{ e( cis e)}
    \times 2/3{d,( fis a)} \times 2/3{fis'( d a)} \times 2/3{g'( e b)}
    \times 2/3{fis'( g fis)} \times 2/3{e( fis e)} \times 2/3{d( e d)}
    \times 2/3{e( g) e-.} \times 2/3{d( fis) d-.} \times 2/3{cis(\trill b cis)}
    \times 2/3{d fis, a} \times 2/3{d a d} \times 2/3{fis d fis}
    
    \repeat unfold 3 { \times 2/3{a( fis d)} }
    \times 2/3{a'( b a)} \times 2/3{g( a g)} \times 2/3{fis( g fis)}
    \repeat unfold 3 { \times 2/3{g( e a,)} }
    \times 2/3{g'( a g)} \times 2/3{fis( g fis)} \times 2/3{e( fis e)}
    d8-! d,-! \times 2/3{g'8( a fis)} \times 2/3{ e( fis d)}
    \times 2/3{d( cis d)} \times 2/3{e( d e)} \times 2/3{fis( g a)}
    g4( fis e)
    
    % code
    \times 2/3{d8( fis e)} \times 2/3{d( e fis)} \times 2/3{fis( g a)}
    \times 2/3{b( a g)} fis4 e\trill
    \times 2/3{fis8( d fis)} \times 2/3{a( fis a)} \times 2/3{d( a fis)}
    \times 2/3{b( a g)} \times 2/3{fis( g a)} \times 2/3{g( fis e)}
    \times 2/3{d( a fis)} \times 2/3{d d d} \times 2/3{d d d}
    d4 r r \bar"|."
}

violin = \relative c'' {
    \key d \major
    \time 3/4
    \tempo "Allegro moderato"
    
    \theme
    \var_skipping
    \var_running
    \var_leaping
    \var_flowing
}

\score {
    \new Staff { \violin }
    \layout { }
}

