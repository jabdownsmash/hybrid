-A swirl of impenetrable black dust surrounds you, shifting and blowing like a sandstorm. As it clears, you find yourself in what appears to be a carpenters workshop, but the tools are like none you have ever seen. You are drawn to...

+ ...the orb on the workbench.
-- ->mageAppears
+ ...the lenses hanging on the wall.
-- ->mageAppears
+ ...the sextant on the shelf.
-- ->mageAppears

=mageAppears
- Before you get a chance to take a closer look, a cloud of familiar black dust appears in front of you, materializing into a robed figure. 
- "Greetings, spirit," the figure says, removing its hood. A fair yet weathered face appears, framed by a head of long brown hair. "I am a mage, and I have summoned you here."
+ [Greet the mage.] "Greetings, mage," you reply.
-- -> explanation
+ [Demand information.] "Mage, explain yourself at once," you say, sternly.
-- "Calm yourself, spirit," the mage laughs. "The truth will reveal itself in time. Let's not forget who holds the power now."
-- -> explanation
+ [Inquire for a name.] "What is your name?" you ask.
-- The mage laughs. "I could ask you the same thing, spirit! I'm afraid your memories won't serve you here, not the way I have brought you into this world."
++ [Remember your name.] Try as you might, you can't remember anything about yourself or where you came from.
--- -> explanation
++ [Insist getting on the mage's name.] "You haven't answered my question," you insist.
---"Nor shall I," the mage retorts. "That is enough banter for my tastes."
----> explanation

=explanation
-"I have brought you here into my universe so you might help me make sense of the relics I have collected," the mage explains. "What I have here to show you seems to have come from your world."
++ [The mage walks towards the orb.]
---"You are but a nascent spirit. I see that you have come without knowledge of the arts. This merely means that I must show you the powers that these relics hold." 
+++[The mage picks up the orb.]
----"This is the Orb of Force. It took many years of training to conjure similar powers to the ones that this orb can exert, and I believe there are powers yet to discover.
----"My link to the magic within this orb is weak. I can only teach you three commands: Balo, to rise. Ba-se, to move. Selo, to sleep. The orb will only release its hold on you when told to sleep.
"Take it," the mage says, offering the orb out to you.
++++[Take the orb.] -> orbstart


====orbstart
- You grasp the orb. #webborb
- "Balo, ba-se, selo," the mage's commands echo through your mind. -> commands

====commands
-
+ [Ba] -> ba
+ [Lo] -> lo
+ [Se] -> se
=ba
-
+ [Ba] Ba-> baba
+ [Lo] Ba-> balo
+ [Se] Ba-> base
=lo
-
+ [Ba] Lo-> loba
+ [Lo] Lo-> lolo
+ [Se] Lo-> lose
=se
-
+ [Ba] Se-> seba
+ [Lo] Se-> selo
+ [Se] Se-> sese

=baba
-ba->commands

=balo
-lo#cmdborb-gravity
-->commands

=base
-\-se #cmdborb-knock
-->commands

=loba
-ba #cmdborb-float
-->commands

=lolo
-lo->commands

=lose
-\-se->commands

=seba
-ba->commands

=selo
-lo #cmdborb-close
- -> commandsEnd

=sese
-\-se #cmdborb-trails
-->commands

===commandsEnd
- {finalHub:
--> finalHub
}
-"Welcome back," the mage greets you again. "The Orb of Force will stay in my posession, so if you wish to tinker with it longer, you will get that chance."
+[The mage takes the orb from you and puts it back.]
--"The Orb of Force is a gift to my world from yours, and I've distilled that link into other relics in an attempt to glimpse the source of that power.
--"This sextant is one of those distillations. It took the form of a memory, in which the owner is given a mission by their kin to acquire some sort of ship.
++[The mage reaches a hand towards the sextant.]
---"Good luck," the mage says.
+++[The mage adjusts the sextant.]
----->firstDraft

===postFirstDraft
-Black dust appears again, surrounding you and leaving your senses blind. When the dust disappears, you are back in the mage's workshop.
- {finalHub:
--> finalHub
}
-"Well done," says the mage. "There is one more relic I wish to show you."
+ [The mage carefully resets the sextant.]
-- "I attempted to discover the truth behind the powers that these relics hold, and these lenses were the tools I used to do so.
++ [The mage retrieves the lenses from the wall.]
-- "What I found was another memory that seems to show one of the first sources of this magic. Take a look."
-- The mage beckons you to look through the lenses.
+++ [Look through the lenses.]
--- ->secondDraft

===postSecondDraft
- {finalHub:
--> finalHub
}
- "Incredible, no?" the mage asks. "The resemblance between this memory and the Orb of Force is striking."
+ [The mage puts the lenses back on the wall.]
-- "I must go now. My enchanted scribes have been measuring your interactions with the relics, and there is much work to do if I am to make any sense of your time here. I leave you here to revisit the relics as you please, and I am sure that you understand how to leave this world if you wish."
++ [The mage replaces their hood.]
--- "Goodbye," the mage says, as they vanish in a puff of black dust.
--- -> finalHub

===finalHub
- You are drawn to...
+ ...the orb on the workbench.
-- ->orbstart
+ ...the lenses hanging on the wall.
-- ->secondDraft
+ ...the sextant on the shelf.
-- ->firstDraft

====secondDraft
- As you position yourself to look through the lenses, you find yourself sucked through it. The sudden shift in your surroundings disorients you, but you soon feel like you are where you are supposed to be.
-“What’s that?” Kyle asks, pointing at a bag on the ground. You’ve just left the seediest bar you know, it could be anything.
+ Pick it up.
--You pick up the bag and inspect it. It's a plastic baggie with 4 transparent capsules, each filled with brown powder.
--"These have got to be some sort of drug," you say to Kyle. 
"Well, bottoms up, right?" Kyle responds. 
++ Not a chance. 
--- “There’s no telling what’s in these pills,” you respond.
--- “Let me take a look!” Kyle says, excitedly.
+++Hand over the bag.
----Kyle takes the bag from you and holds it up to the light.
----“Wooow,” he says, focused intently on the pills in the bag.
----“How much do you think these cost?” he asks.
++++How much it might cost doesn't change where we found it.
-----“Kyle, this bag was on the ground. We have no idea what’s in there!” you say to him. When you turn to look at him, his arms are at his side and he has his eyes closed, with a grin on his face.
+++++ That can only mean one thing. -> kyleFirst
++++Free! -> meFirst
//+++Refuse.
++ It's free!
--- -> meFirst
+ Leave it alone. 
--"I don't know, Kyle..." you respond cautiously. He flashes you a quick look of judgement, then chuckles to himself. 
--"Are you scared of it?" Kyle teases as he picks up the bag. Kyle inspects the bag for a moment before exclaiming, "Wow! These look fun, honestly."
++Me first! -> meFirst
++Mystery floor drugs?
--- “I don’t trust them, Kyle,” you say. Before you finish your sentence, he’s got a pill in his mouth and a grin on his face.
--- ->kyleFirst

===meFirst
-You take a pill out of the bag and put it into your mouth.
+Swallow. -> trip1

===trip1
--Immediately, you feel a new relationship to your surroundings, as everything goes dark in a way you have never seen before. #web-trails0
++Whoa.
---An orb appears. #web-trails
+++Relax.
----You feel like you can move it, and it multiplies. #web-trails2
++++Breathe.
-----The multiplicities crash together. #web-trails3
+++++Gasp.
------You're sure you're staring into a new reality. #web-trails4
++++++Relax.
-------You're back.
++++++++Finally.
---------Just kidding.
++++++++++What?
----------... #web-trails5
+++++++++++Holy fuck.
---- -> finished

===kyleFirst
-“Kyle, what the hell?” you nearly scream at him. He’s always been a kind of a wildcard, but you’re sure he has crossed a line here.
-A few seconds pass and Kyle doesn’t respond. His eyes are closed and his smile is slowly fading.
+Kyle?
--you ask, quieter this time. “Kyle?” you ask again, to no avail.
++Snap
---You snap your fingers in his face. Nothing.
+++Snap again.
----No response.
++++Snap again.
----- Kyle’s eyes finally open and he jumps backwards, looking surprised. Kyle looks around frantically as a stream of expletives pours out of him in the loudest, most excited voice you think you have ever heard. 
+++++ Calm him down.
------ “Kyle, you’re going to get arrested if you don’t chill out!” you yell at him.
------ ->finished


===finished
-The world shifts and compresses into a ball of light, then vanishes. You realize you are still staring through the lenses in the mage's workshop.
+[Look away.] -> postSecondDraft









VAR age = 23
VAR mood = 1
VAR health = 1
VAR soma = 3
VAR name = 0
===firstDraft
-A swirl of black dust surrounds you, thick enough to lose sense of your surroundings. It clears, and... You wake up to your phone ringing. The caller ID reads "Macy." 
+Answer. 
--"Hello?" you ask, unintentionally sounding tired. 
--"Good morning, sleepyhead," Macy teases. "It's nearly 4 o clock!" 
++Groan.
--- ->call2
++Tell the truth. 
---"I had a long night," you confess. 
---"Hangovers!" Macy laughs. You're sure she's gone crazy.
---->call2
++Fight back. 
---"It's the future now, Macy, phone calls are a Bush administration tactic," you say. "We moved on from this for a reason." 
---"Oh, sorry I didn't reach out on DorkTube or NerdsApp like a true Immortal!" 
---"Come on, Immortals are in grade school right now. I'm more Gen Z than you are," you respond. You silently wish you had come up with a better comeback.
--- ->call2
=call2
---"Look, this is the last time I'm going to call you like this. I know you don't have a car yet, but you have to get one and drive up to Dad's old place as soon as you can. I can't keep this a secret much longer." 
---"I have no idea what you're talking about!" You're awake now. "How can you expect me to go through all that for nothing?" 
---"Trust me," Macy says, calmly. "It's worth it. I hope I see you soon." 
---Macy hangs up. You admit to yourself that you're a little curious what's going on. Macy never asks for favors, but here she is, pleading with you to meet with her. The only way to get there is by car, and you have been wheels-free ever since you moved into New Los Angeles. Luckily for you, a friend of yours owns a Flit store on the south side.
--- -> home.your_room
+Ignore it. 
- -> home.your_room



=== home
= your_room
- You're in your room.
+ [Go to the car store.] -> car_store
+ [Go to the bank.] -> bank



=== bank
- You're at the bank. Carpeted floors and fluorescent lighting keep you uncomfortable enough to not inspect it further. Nobody is around besides yourself and a teller who appears bored.
+ [Talk to the teller.] -> teller
+ [Go home.] -> home

=teller
- {greet: "{name}, right?" the teller says to you. -> account}
-> greet
=greet
"Hello, welcome to the bank," the teller says, in a deadpan tone. You're unsure if you misheard. 

"Can I get your name so I can look up your account?" 
 + Frank.
 -- ~name="Frank"
 -- “Wow, that rhymes with bank!” the teller exclaims. -> account
 + Sarah. 
 -- ~name="Sarah"
 -- “Alright, just give me a second to look through the system,” the teller responds. -> account
 + Sauce.
 -- ~name="Sauce"
 -- "Sauce?" The teller shoots you a confused look. You nod and stare expectantly back at the teller. The teller quickly regains composure.
 -- ~mood--
 -- "Ah, here's your account," the teller says. <>-> account
- You're at the bank.
* [Withdraw money.] -> withdraw_money
+ [Go to the car store.] -> car_store
+ [Go home.] -> home
= withdraw_money
- The teller hands over, silently, all of the money in your bank account in 100$ bills. It's a surprisingly short stack.
  -> bank
 
= account
"How may I help you today?" 
+ Check balance.
-- "I'd like to check my balance," you say.
-- "It seems like your bank account is empty." The teller responds. <>
--{mood >= 3: 
- The teller briefly looks annoyed.
}
--{mood >= 5:
- You realize that an ATM could have done this, and much quicker.
~ mood--
}
-- -> account
+ Withdraw money. ->withdraw_money
+ Say goodbye to the teller.
-> bank
= empty_account
--- bank account is empty. 
-> bank



=== car_store
- You're in the car store. { not bank.withdraw_money: You can't afford anything. }
+ { bank.withdraw_money } [Buy a hybrid car.]
-- "You are paying in cash?" The teller asks.
++ Yes.
--- "Okay," the teller responds.
  You buy a hybrid car. -> postFirstDraft
++ No.
   "Okay," the teller responds.
-> car_store
+ [Go home.] -> home
+ [Go to the bank.] -> bank



=== soma_intoxication
~soma--
You unwrap a piece of soma and gently place it in your mouth, under your tongue. You're careful not to let it move around too much. You sit down on the couch and let yourself sink into it, slowly. Within minutes you begin to see the black screen of the television in front of you melt into the wall.
{mood > 1: You look around and see the walls darkening, slowly and subtly at first, but then everything around you quickly shifts to black. The bed goes last, darkening its hue from the head of the mattress to the foot. Soon, there is no color in the room aside from an orb you see in front of you. Your sudden recognition of the orb startles you.}
 + Relax.
 -- You're sure you've been here before, but you can't figure out why you feel that way. You don't remember when you would have visited this place before, yet the bright orb against the new darkness of your room is familiar to you. 
 -- ~mood++
 ++ Your thoughts drift over your memories.
 --- {mood < 0: What was I thinking? You ask yourself. You can't come up with any reasonable response. At least there's tomorrow.}
 --- {mood > 1: You step through a conversation you had in your mind, and you find it comforting.}
 --- {mood > 3:
        -<>The mistakes of the day melt away as you see a vision of the self you are striving towards.
        ~mood++
    }
 --- {mood > 5:
        -<>The stresses on your body distinguish themselves from each other, prompting you to stretch them out.
        ~health++
    }
 --- -> warp_end.
 ++ You realize the orb is slowly drifting towards you. 
 --- It shifts and bends. #web-trails
 +++ Breathe.
 ---- -> warp_end

= warp_end
The room abruptly becomes normal again, and you wonder what you were just doing. Only a few minutes seems to have passed since you sat down, but you get back up.
->home.your_room