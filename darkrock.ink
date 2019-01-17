# theme: dark
# author: Peter LaValle @ github.com/peterlavalle/darkrock
//
// Peter LaValle - https://github.com/peterlavalle/darkrock
// 2019-01-17
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

Setup @R6:R12

-> stepExplore

== stepExplore

Exploration Step.

+ [Draw an "Exploration Card"]
	-> drawExplore

+ Finish the Expedition
	-> stepPrecipcie
	
== drawExplore

+ you drew a Challenge card
	-> drewChallenge
+ you drew a Combat card
	-> drewCombat
+ you drew an Ambush card
	Remember; in an Ambush, the hostiles all go first on the first turn. @C9
	-> drewCombat

== drewChallenge

Do the thing

+ [Finish Card]
	-> stepRecovery

== drewCombat

Create Battlefield

1; setup battlefield tiles and markers
2; deploy hostiles from encounter cards
3; set up the initiate deck

+ [Fight Combat]
	-> fightCombat

== fightCombat

Begin combat turn. @C7

+ Destiny Phase / Roll desitiny dice @C7
+ + Initiative Phase / Explorer Activation Rolls
+ + + Initiative Phase / Deal Initiative Cards
+ + + + Initiative Phase / Explorer (free) Covering Fire
+ + + + + Initiative Phase / Explorer (paid) Gambits
+ + + + + + [Gambits Finished / Activate things in order]
    -> phaseActivation

== phaseActivation

+ Activate next Explorer
    -> phaseActivationExplorer
+ Activate next Hostile group
    -> phaseActivationHostile
+ All Activations Complete
    Add this section
    -> phaseEvent


== phaseActivationExplorer

+ Explorer Attack Action
    Add this section
    -> phaseActivationExplorer
+ Explorer Other Action
    Add this section
    -> phaseActivationExplorer
+ [Done with Actions]
    check Inspiration Roll @C10
    -> phaseActivation


== phaseActivationHostile

+ Reinforcement Rolls @C13
    Only roll for "old" hostiles.
    Roll for each mini.
    -> phaseActivationHostileBehaviour

== phaseActivationHostileBehaviour

for any attack @C14
1. choose target / weapon
2. explorer makes a defense roll

+ done with this group
    -> phaseActivation
    
== phaseActivationHostileAttack


-> phaseActivationHostileBehaviour

== phaseEvent

+ All Explorers Out of Action
    Add this section
    -> END
+ All Explorers in Escape
    Add this section
    -> END
+ Combat Continues
    perform Event Roll @C15
    -> fightCombat


== stepRecovery

Recovery Step.

Make recovery rolls for any "Out of Action" explorer (R14)
Make vitality rolls for wounded explorer (R14)

+ An Explorer has died
	-> stepPrecipcie
+ [Expedition Continues]
+ + [pass the leadership token]
    new Leader
    -> stepExplore

== stepPrecipcie

UNKNOWN (I need to add this section)

-> END