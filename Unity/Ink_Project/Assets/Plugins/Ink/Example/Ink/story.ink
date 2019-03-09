VAR info = 0
VAR scared = 0
VAR regret = 0

-> start

=== function lower(ref x)
	~ x = x - 1

=== function raise(ref x)
	~ x = x + 1

=== start ===
It is Sunday, you woke up to the sound of your phone buzzing. The clock reads 5:30 AM, you wonder why your phone buzzed.
-> intro

=== intro ===
* [Sleep some more]
	You uncomfortably roll around in your bed, trying to fall back asleep. You're still awake. -> intro
* [It's too early]
	You should have turn off your notifications, it's too early. -> intro
+ [Open messages] -> phone

=== phone ===
Lethargically turning over with an outstretch hand, you fumble for your phone. You feel the drafts of your paper that you have yet to finalize, folders which you should have been using, and pens and pencils scattered, crowding your desk. You finally feel the edge of your phone and look at your messages:
-> openNotification

=== openNotification ===
+ [Gmail message] -> gmail
+ [Message from brother] -> textFromBro
+ [Calendar notification] -> calendar
* { textFromBro } [News Alert] -> alert

=== gmail ===
"Fastapp Scholarships: 4 Scholarships Need Your Application See Them Now And Click The Link Below!"

It's obviously a scam, you block the email.
+ [Other messages] -> openNotification

=== textFromBro ===
You open the text from your brother: 
"Yo, can you clean the dishes and table for me, I woke up late for work, thanks." You stare at your phone with annoyance, hoping that you'll be able to find an apartment soon. Your phone buzzes.
+ [Look at messages] -> openNotification

=== calendar ===
"Finish the final draft for Literature class"
You look over to your desk, and slightly regret deciding to take the course.
+ [Other messages] -> openNotification

=== alert ===
You open the News Alert:
New York News Alert: A woman and man in their 30's have been found deceased in their apartment, burn marks were found all over their bodies, proceed daily activities with caution.
* [What?]
	Burn marks? Was there a fire? Your phone buzzes again. 
		** [Open message] -> secondAlert
* [Search the web]
	~ raise(info)
	-> lookitUp
* [Oh]
	You get nervous and ponder if you should go out today. You jump as your phone buzzes again.
		** Open notification -> secondAlert

=== lookitUp ===
You start searching the web for more information. A woman next door had called the police saying there was a strange smell coming from the apartment next door. The bodies were 2 days old and both were found in front of their full-length mirror. Your phone buzzes again. 
* Open notification -> secondAlert

=== secondAlert ===
You look at your phone and see that it's another Alert:
New York News Alert: A couple of kids surrounded by shards from a mirror were found disfigured at Central Park, if you've seen any suspicious activity report immediately and proceed daily activities with caution.
* [...] 
You don't know what to say.
	** [Reaasure]
		You stare quietly at your phone, death happen all the time, you brush away the uncertainty. 
		*** [Go to the kitchen]-> coffee
	** [Text your brother]
		You text your brother to ask if he knew anything about the incidents. He doesn't reply, he must be busy at work. 
		*** [Go to the kitchen] -> coffee
	** [Go to the kitchen] -> coffee
* [Search the web] 
	~ raise(info)
	-> lookitup2
* [Ask your mom about the alerts]
You text your mom to ask whats happening, no reply. 
	** [Reaasure]
		You stare quietly at your phone, death happen all the time, you brush away the uncertainty. 
		*** [Go to the kitchen]-> coffee
	** [Text your brother]
		You text your brother to ask if he knew anything about the incidents. He doesn't reply, he must be busy at work. 
		*** [Go to the kitchen] -> coffee
	** [Go to the kitchen] -> coffee

=== lookitup2 ===
These deaths were strange, there's glass surrounding the bodies but there were no external markings on the body, it was all internal. "Was the glass not used as a weapon?"
* [Reaasure]
	You stare quietly at your phone, death happen all the time, you brush away the uncertainty, you should make yourself coffee. 
	** [Go to the kitchen]-> coffee
* [Text your brother]
	You text your brother to ask if he knew anything about the incidents. He doesn't reply, he must be busy at work. 
	** [Go to the kitchen] -> coffee
* [Go to the kitchen] -> coffee

=== coffee ===
Placing your phone in your pocket, you walk into the kitchen. You're horrified as you find cereal all over the floor, and orange juice leaks down from the small opening of your fridge.
+ [Clean] -> cleanKitchen
+ [Leave it] -> leaveKitchen

=== cleanKitchen ===
You sighed and then went to go get a broom and towel, it takes you awhile but the kitchen is clean now.
* [Make Coffee]
	You take a Dunkin Donut k-cup and place it into your keurig, once you finish brewing your coffee you bring it to the coffee table.
	** [Turn on TV] -> tv
* [Make breakfast]
	You decide to make waffles, when you finished cooking the waffles you placed them on a plate and bring it to your coffee table.
	** [Turn on TV] -> tv
* [Make both]
	You decided to make waffles and as they were cooking, you take a Dunkin Donut k-cup and place it into your keurig. When you finished making your coffee and waffles you bring them to your coffee table.
	** [Turn on TV] -> tv

=== leaveKitchen ===
You decide to leave the mess for you brother.
* [Make Coffee]
	You take a Dunkin Donut k-cup and place it into your keurig, once you finish brewing your coffee you bring it to the coffee table, crunching the cereal under your feet.
	** [Turn on TV] -> tv
* [Make breakfast]
	You decide to make waffles, when you finished cooking the waffles you placed them on a plate and bring it to your coffee table, crunching the cereal under your feet.
	** [Turn on TV] -> tv
* [Make both]
	You decided to make waffles and as they were cooking, you take a Dunkin Donut k-cup and place it into your keurig. When you finished making your coffee and waffles you bring them to your coffee table, crunching the cereal under your feet.
	** [Turn on TV] -> tv

=== tv ===
You turn on the TV, and go on the News channel.
-> thirdAlert

=== thirdAlert ===
It's another alert message:
New York News Alert: A woman was found in her apartment with her skin peeled off, identity unknown, if you've seen any suspicious activity report immediately and proceed daily activities with caution.
* [Worry]
	You shiver as you begin to worry about what's happening. Death is normal, you shouldn't be anxious.
	** [Go to the bathroom] -> bathroom
* [Reassure yourself]
	You try to reassure yourself, death happens, it's normal. You're still anxious.
	** [Go to the bathroom] -> bathroom
* [Search the web]
	The woman was holding a broken hand mirror. "That's weird." You shake your head, death happens, it's normal.
	** [Go to the bathroom] -> bathroom
	** {info < 2} [Missing?]
		There's something missing about the situation but you don't know what it is. You brush off the feeling.
		*** [Go to the bathroom] -> bathroom
	** [Uncertain]
		You feel uncertain about the whole situation. Should you be worried? You brush off the uncertainty.
		*** [Go to the bathroom] -> bathroom
	** { info >= 2 } [Glass?]
		Why was there always glass or mirrors in these incidents? Maybe your overthinking it.
		*** [Go to the bathroom]
			~ raise(info)
			-> bathroom

=== bathroom ===
You go into the bathroom.
* [Wash your face] 
	"Stop freaking out, it's nothing." You stare at yourself, and contemplate how to fix the bed hair, after a moment you start to feel dizzy. -> death
* [Calm yourself]
	You look at yourself in the mirror, "It's just a mirror, you're fine." As you stare into your own eyes, you start to feel dizzy. -> death

=== death ===
You don't know why your dizzy, looking down and with your hands on the counter, you hold yourself and stayed still for a moment. You look up and what you see horrifies you, it's you that stares back at you, but at the same time it isn't.
* [Stare] -> stare  
* [Look Away] -> lookaway

=== stare ===
You stare at the figure before you. It was as if your reflection was watching you, analyzing you. 
* [You stared] 
	You stare and stare and watch as the reflection began to deform. 
	The skin began to sag. 
	Parts of it began to rot. 
	And blood begins to flow from the rips in the skin. 
	** [And you still stare] 
		And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
		The sagging of your skin. 
		The pungent smell of rotting flesh. 
		The warm blood that oozes down your face.
		*** [Stop]
			You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
			**** ["I don't want to die."]
				As your conscious fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
				***** [...] -> fewHours

=== lookaway ===
You try to look away, but your frozen, as if something was grabbing you and holding you down.
* [Run]
	You don't know why your body doesn't move. All you do is stare at the reflection in front of you. At those eyes that were watching you. 
	** [You stared] 
		You stared and stared and watched as the reflection began to deform. 
		The skin began to sag. 
		Parts of it began to rot.
		And blood begins to flow from the rips in the skin. 
		*** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your conscious fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours

=== fewHours ===
From reading all the news articles you understand what's happening; don't look at yourself in mirrors.
* [You know]
	You know what you're not suppose to look at.
	-> running
* {info == 3} [All mirrors?]
	After studying the news articles more in depth you realize you only die when you can see a clear reflection of yourself. There can't be any haze, or tinted color. 
	-> running
* {info < 3} [What?]
	"How is that even possible?" Things just get crazier and crazier.
	-> running
* [what a joke?]
	This is too serious to be a joke, your in denial.
	~ raise(scared)
	-> running

=== running ===
Your running.
* [Why?]
	All the roads are jammed with cars and buses. A few hours after the inital news alert, all you could hear were the screeching of cars, and the smells of burning rubber and blood. People are panicked.
	~ raise(scared)
	** [...] -> stairs
* [Anxious?]
	Your anxious, no matter how much you called or texted, you couldn't get a hold of your sister.
	~ raise(scared)
	** [...] -> stairs
* {info < 2} [Run faster]
	You run faster, a panic that you haven't felt before. You ran past the crashed vehicles and screaming people in agony.
	~ raise (scared)
	** [...] -> stairs
* {info > 2} [Surroundings?]
	It's hectic. People scream in agony, bodies lay on the sidewalk, under vehicles, and behind the wheel. You're terrified. You run faster, you have to get to your apartment, you have to know if your sister is ok.
	~ raise (scared)
	** [...] -> stairs

=== stairs ===
Breathing heavily, you finally arrive at the stairs to your apartment.
* [Catch your breath]
	You put your a hand on the railing, holding yourself from collapsing, as you take deep breaths.
* [Hesitate]
	You hesitate at the stairs to your apartment. Questions begin formulating in your head, "Is she alright? Is she dead? What would you do if you found a body? What if she's still asleep?"
* [Walk away?]
	Your scared. Your panicked. You thought you could handle it, but now your not sure. "I don't know what to do."
	** [Go inside]
		You take a deep breath and gather the courage to go inside. You walk up the stairs and to your apartment door.
		~ lower(scared)
		*** [Room #305] -> apartment
	** [Walk away]
		You can't do it, you can't go inside. You turn around.
		~ raise(regret)
		~ raise(scared)
		*** Walk away -> strangeman

=== apartment ===
You stand in front of your apartment door. #305. You fumble for the key that's in your pocket and unlock the door. 
* Go inside
	You walk into the apartment. As you walk inside, you look at the shoe rack. "Her shoes are still here."
	** Kitchen
		You walk into the kitchen. {cleanKitchen} The mess you made this morning as been clearn. {leaveKitchen} The mess you made this morning hasn't been cleaned. 
	** Living Room
* [Walk away]
	You can't do it, you can't go inside. You turn around.
	~ raise(regret)
	~ raise(scared)
	** Walk away -> strangeman

=== strangeman ===


=== regretting ===
{regret > 2}
You hate yourself. You wished you had done so many things differently; you should've went into your apartment, should've faced that reality, you should've helped that man, you shouldn't have agreed with those worshippers.
* [Close your eyes]
	You close your eyes, your just so tired of everything. "Why did this happen?"
* [Glimpse of light]
	You see something shiny burried under the rocks and sand you sit on. 
		** [Dig it up]
		Your drawn to it, you start using your hands to dig it out. Your hand feel the sharp edges and the flat surface of the object, you know what it is.
			*** [No way out]
			You can't escape from the room your locked in. You don't want to kill another person.
				**** [A way out]
				You already found your resolve, you don't want to harm another person, you're scared but you find peace in taking all your regret with you. You look into the mirror.
					***** [...]

-> END