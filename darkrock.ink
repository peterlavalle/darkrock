# theme: dark
# author: Peter LaValle
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

Setup @R6:R12

-> stepExplore

== stepExplore

Exploration Step.

+ [Draw an "Exploration Card"]
	-> drawExplore

+ Finish the Expedition
	-> stepPrecipcie
	
== drawExplore

+ Drew Challenge
	-> drewChallenge
+ Drew Combat
	-> drewCombat
+ Drew Ambush
	Remember; in an Ambush, the hostiles all go first on the first turn. @C9
	-> drewCombat

== drewChallenge

Do the thing

+ [Finish Card]
	-> stepRecovery

== drewCombat

Creation

1; setup battlefield tiles and markers
2; deploy hostiles from encounter cards
3; set up the initiate deck

+ [Fight Combat]
	-> fightCombat

== fightCombat

Begin combat turn. @C7

+ Destiny Phase
    -> phaseDestiny

== phaseDestiny

make the destiny roll @C7

+ Initiative Phase
    -> phaseInitiative

== phaseInitiative

+ Initiative Phase / Activation Rolls
    -> phaseInitiativeActivationRolls

== phaseInitiativeActivationRolls

+ Initiative Phase / Initiative Cards
    -> phaseInitiativeInitiateCards

== phaseInitiativeInitiateCards

+ Initiative Phase / Covering Fire
    -> phaseInitiativeCoveringFire

== phaseInitiativeCoveringFire

+ Initiative Phase / Gambits
    -> phaseInitiativeGambits

== phaseInitiativeGambits

+ [Gambits Finished]
    -> phaseActivation

== phaseActivation

+ Activate next Explorer
    -> phaseActivationExplorer
+ Activate next Hostile group
    -> phaseActivationHostile
+ Activation Complete
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
	-> stepLeader

== stepLeader

+ [pass the leadership token]
	-> stepExplore

== stepPrecipcie

UNKNOWN (I need to add this section)

-> END