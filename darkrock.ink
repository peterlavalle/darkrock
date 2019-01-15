
//
// Peter LaValle - https://peterlavalle.github.io/
// 2019-01-15
//
// This is a rules prompt thing for a certain board game.
// Demo (of early version)
// - https://youtu.be/XToAD5YGvjA
//
// The game's name is absent to save us from the lawyer bots ;)
//
// This was written in Inkle's Inky
// - https://github.com/inkle/inky/releases
//
// More help here;
// - https://www.inklestudios.com/ink/web-tutorial/
//

Setup (pages R6 - R12)

-> stepExplore

== stepExplore

Exploration Step.

+ Draw an "Exploration Card"
    -> drawExplore

+ Finish the Expedition
    -> stepPrecipcie
    
== drawExplore
    

+ Drew Challenge
    -> drewChallenge
+ Drew Combat
    -> drewCombat
+ Drew Ambush
    -> drewAmbush

== drewChallenge

Do the thing

+ Finish Card
    -> stepRecovery


== drewCombat

Do the thing

+ Finish Card
    -> stepRecovery

== drewAmbush

Do the thing

+ Finish Card
    -> stepRecovery


== stepRecovery

Recovery Step.

Make recovery rolls for any "Out of Action" explorer (R14)
Make vitality rolls for wounded explorerd (R14)


-> stepLeader

== stepLeader

+ Pass Leadership
    -> stepExplore

== stepPrecipcie

UNKOWN

-> END