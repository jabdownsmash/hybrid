VAR age = 23
VAR mood = 1
VAR health = 1
VAR soma = 3
VAR name = 0

You wake up.
-> home.your_room



=== home
= your_room
- You're in your room.
+ [Go to the car store.] -> car_store
+ [Go to the bank.] -> bank
+ {soma > 0} [Do some drugs.] -> soma_intoxication



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
 * Frank.
 -- ~name="Frank"
 -- “Wow, that rhymes with bank!” the teller exclaims. -> account
 * Sarah. 
 -- ~name="Sarah"
 -- “Alright, just give me a second to look through the system,” the teller responds. -> account
 * Sauce.
 -- ~name="Sauce"
 -- "Sauce?" The teller shoots you a confused look. You nod and stare expectantly back at the teller. The teller quickly regains composure.
 -- ~mood--
 -- "Ah, here's your account," the teller says. <>-> account
- You're at the bank.
* [Withdraw money.] -> withdraw_money
+ [Go to the car store.] -> car_store
+ [Go home.] -> home
= withdraw_money
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
+ Withdraw money. 
-- how much? 
++ [Just enough for a hybrid car.] -> empty_account
++ [5000$] -> empty_account
++ [20$] -> empty_account
+ Say goodbye to the teller.
-> bank
= empty_account
--- bank account is empty. 
-> bank



=== car_store
- You're in the car store. { not bank.withdraw_money: You can't afford anything. }
* { bank.withdraw_money } [Buy a hybrid car.]
-- "You are paying in cash?" The teller asks.
** Yes.
--- "Okay," the teller responds.
  You buy a hybrid car. -> END
** No.
   "Okay," the teller responds.
-> car_store
+ [Go home.] -> home
+ [Go to the bank.] -> bank



=== soma_intoxication
~soma--
You unwrap a piece of soma and gently place it in your mouth, under your tongue. You're careful not to let it move around too much. You sit down on the couch and let yourself sink into it, slowly. Within minutes you begin to see the black screen of the television in front of you melt into the wall.
{mood > 1: You look around and see the walls darkening, slowly and subtly at first, but then everything around you quickly shifts to black. The bed goes last, darkening its hue from the head of the mattress to the foot. Soon, there is no color in the room aside from an orb you see in front of you. Your sudden recognition of the orb startles you.}
 + Relax.
 - You're sure you've been here before, but you can't figure out why you feel that way. You don't remember when you would have visited this place before, yet the bright orb against the new darkness of your room is familiar to you. 
 - ~mood++
 ++ You realize the orb is slowly drifting towards you.
 --- -> warp_end
 ++ Your thoughts drift over your memories.
 -- {mood < 0: What was I thinking? You ask yourself. You can't come up with any reasonable response. At least there's tomorrow.}
 -- {mood > 1: You step through a conversation you had in your mind, and you find it comforting.}
 -- {mood > 3:
        -<>The mistakes of the day melt away as you see a vision of the self you are striving towards.
        ~mood++
    }
 -- {mood > 5:
        -<>The stresses on your body distinguish themselves from each other, prompting you to stretch them out.
        ~health++
    }
 -> warp_end.

= warp_end
The room abruptly becomes normal again, and you wonder what you were just doing. Only a few minutes seems to have passed since you sat down, but you get back up.
->home.your_room

