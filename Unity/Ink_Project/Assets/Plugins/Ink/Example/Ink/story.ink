VAR info = 0
VAR regret = 0
VAR stuff = 0

-> start

=== function lower(ref x)
	~ x = x - 1

=== function raise(ref x)
	~ x = x + 1

=== start ===
It is Sunday, you woke up to the sound of your phone buzzing. You look at your watch, it reads 5:30 AM, you wonder why your phone buzzed.
-> intro

=== intro ===
* [Sleep some more]
	You uncomfortably roll around in your bed, trying to fall back asleep. The noise of honking cars and ambulance sirens keeps you awake. -> intro
* [It's too early]
	It's too early, you should've turned off your notifications. -> intro
+ [Open messages] -> phone

=== phone ===
Lethargically turning over with an outstretched hand, you fumble for your phone. You feel the drafts of your paper that you have yet to finalize, folders which you should have been using, and pens and pencils scattered, crowding your desk. You finally feel the edge of your phone and look at your messages:
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
"Hey, can you clean the mess in the kitchen for me, I woke up late for work, thanks." You stare at your phone with annoyance, hoping that you'll be able to find an apartment soon. Your phone buzzes.
+ [Look at messages] -> openNotification

=== calendar ===
"Finish the final draft for Literature class"
You look over to your desk and slightly regret deciding to take the course.
+ [Other messages] -> openNotification

=== alert ===
You open the News Alert:
New York News Alert: A woman and man in their 30's have been found dead in their apartment, burn marks were found all over their bodies, proceed daily activities with caution.
* [What?]
	Burn marks? Was there a fire? Your phone buzzes again. 
		** [Open message] -> secondAlert
* [Search the web]
	~ raise(info)
	-> lookitUp
* [Oh]
	You get nervous and wonder if you should go out today. You jump as your phone buzzes again.
		** [Open notification] -> secondAlert

=== lookitUp ===
You start searching the web for more information. You find that a woman next door had called the police saying there was a strange smell coming from the apartment. The bodies were a day old and both were found in front of their full-length mirror. Your phone buzzes again. 
* [Open notification] -> secondAlert

=== secondAlert ===
You look at your phone and see that it's another Alert:
New York News Alert: A couple of kids surrounded by mirror shards were found disfigured at Central Park. If you've seen any suspicious activity report immediately and proceed daily activities with caution.
* [...] 
You don't know what to say.
	** [Reaasure]
		You stare quietly at your phone, death happens all the time, you brush away the uncertainty. 
		*** [Go to the kitchen]-> coffee
	** [Text your brother]
		You text your brother to ask if he knows anything about the incidents. He doesn't reply, he must be busy at work. 
		*** [Go to the kitchen] -> coffee
	** [Worried] -> coffee
		You question going out today.
		*** [Go to the kitchen]-> coffee
* [Search the web] 
	~ raise(info)
	-> lookitup2
* [Ask your mom about the alerts]
You text your mom to ask what's happening, no reply. 
	** [Reaasure]
		You stare quietly at your phone, death happens all the time, you brush away the uncertainty. 
		*** [Go to the kitchen]-> coffee
	** [Text your brother]
		You text your brother to ask if he knows anything about the incidents. He doesn't reply, he must be busy at work. 
		*** [Go to the kitchen] -> coffee
	** [Worried] -> coffee
		You're worried about your mom and question going out today.
		*** [Go to the kitchen]-> coffee

=== lookitup2 ===
These deaths were strange, there are mirror shards surrounding the bodies but there were no external markings on the body, it was all internal. "Were the shards not used as a weapon?"
* [Reaasure]
	You stare quietly at your phone, death happens all the time, you brush away the uncertainty, you should make yourself a cup of coffee. 
	** [Go to the kitchen]-> coffee
* [Text your brother]
	You text your brother to ask if he knows anything about the incidents. He doesn't reply, he must be busy at work. 
	** [Go to the kitchen] -> coffee
* [Worried] -> coffee
	You question going out today.
	** [Go to the kitchen] -> coffee

=== coffee ===
Placing your phone in your pocket, you walk into the kitchen. You're horrified as you find cereal all over the floor, and orange juice that leaks down from the small opening of your fridge.
+ [Clean] -> cleanKitchen
+ [Leave it] -> leaveKitchen

=== cleanKitchen ===
You sighed and then went to go get a broom and towel, it takes you a while but the kitchen is clean now.
* [Make Coffee]
	You take a Dunkin Donut k-cup and place it into your Keurig, once you finish brewing your coffee you bring it to the coffee table.
	** [Drink coffee]
		You sip your coffee, still thinking about the news alerts.
		*** [Go to the bathroom] -> bathroom
		*** [Turn on TV] -> tv
	** [Turn on TV] -> tv
* [Make breakfast]
	You decide to make waffles, when you finished cooking the waffles you placed them on a plate and bring it to your coffee table.
	** [Eat breakfast]
		You eat your waffles, still thinking about the news alerts.
		*** [Go to the bathroom] -> bathroom
		*** [Turn on TV] -> tv
	** [Turn on TV] -> tv
* [Make both]
	You decided to make waffles and as they were cooking, you take a Dunkin Donut k-cup and place it into your Keurig. When you finished making your coffee and waffles you bring them to your coffee table.
	** [Eat breakfast]
		You eat your waffles and drink your coffee. You're still thinking about the news alerts.
		*** [Go to the bathroom] -> bathroom
		*** [Turn on TV] -> tv
	** [Turn on TV] -> tv

=== leaveKitchen ===
You decide to leave the mess for your brother.
* [Make Coffee]
	You take a Dunkin Donut k-cup and place it into your Keurig, once you finish brewing your coffee you bring it to the coffee table, crunching the cereal under your feet.
	** [Drink coffee]
		You sip your coffee, still thinking about the news alerts.
		*** [Go to the bathroom] -> bathroom
		*** [Turn on TV] -> tv
	** [Turn on TV] -> tv
* [Make breakfast]
	You decide to make waffles, when you finished cooking the waffles you placed them on a plate and bring it to your coffee table, crunching the cereal under your feet.
	** [Eat breakfast]
		You eat your waffles, still thinking about the news alerts.
		*** [Go to the bathroom] -> bathroom
		*** [Turn on TV] -> tv
	** [Turn on TV] -> tv
* [Make both]
	You decided to make waffles and as they were cooking, you take a Dunkin Donut k-cup and place it into your Keurig. When you finished making your coffee and waffles you bring them to your coffee table, crunching the cereal under your feet.
	** [Eat breakfast]
		You eat your waffles and drink your coffee. You're still thinking about the news alerts.
		*** [Go to the bathroom] -> bathroom
		*** [Turn on TV] -> tv
	** [Turn on TV] -> tv

=== tv ===
You turn on the TV, and go on the News channel.
-> thirdAlert

=== thirdAlert ===
It's another alert message:
New York News Alert: A woman was found in her apartment with her skin peeled off, identity unknown. If you've seen any suspicious activity report immediately and proceed daily activities with caution.
* [Worry]
	You shiver as you begin to worry about what's happening. Death is normal, you shouldn't be anxious.
	** [Go to the bathroom] -> bathroom
* [Reassure yourself]
	You try to reassure yourself, death happens, it's normal. You're still anxious.
	** [Go to the bathroom] -> bathroom
* [Search the web]
	The woman was holding a broken hand mirror. You shake your head, "That's weird.".
	** [Go to the bathroom] -> bathroom
	** {info < 2} [Missing?]
		There's something missing about the situation but you don't know what it is. You brush off the feeling.
		*** [Go to the bathroom] -> bathroom
	** [Uncertain]
		You feel uncertain about the whole situation. Should you be worried? You brush off the uncertainty.
		*** [Go to the bathroom] -> bathroom
	** {info >= 2} [Mirror?]
		Why were there mirrors in all of these incidents? Maybe you're overthinking it.
		*** [Go to the bathroom]
			~ raise(info)
			-> bathroom

=== bathroom ===
You go into the bathroom.
* [Wash your face] 
	"Stop freaking out, it's nothing." You stare at yourself and contemplate how to fix the bed hair, after a moment you start to feel dizzy. -> death
* [Calm yourself]
	You look at yourself in the mirror, "It's just a mirror, you're fine." As you stare into your own eyes, you start to feel dizzy. -> death

=== death ===
You don't know why you're dizzy, looking down and with your hands on the counter, you hold yourself and stayed still for a moment. You look up and what you see horrifies you, it's you that stares back at you, but at the same time it isn't.
* [Stare] -> stare  
* [Look Away] -> lookaway

=== stare ===
You stare at the figure before you. It was as if your reflection was watching you, analyzing you. 
* [Run]
	You don't know why your body doesn't move. All you do is stare at the reflection in front of you. At those eyes that are watching you. 
	** [Stare]
		You stare and stare and watch as the reflection begins to deform. 
		The skin begins to sag. 
		Parts of it begins to rot. 
		And blood begins to flow from the rips in the skin. 
		*** [Look away]
			You try to look away from the horrifying image but then your face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
		*** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
	** [Look away]
		You try to look away but you can't. You stare and stare and watch as the reflection begins to deform. 
		The skin begins to sag. 
		Parts of it begins to rot. 
		And blood begins to flow from the rips in the skin.
		*** [Try again]
			You try to look away from the horrifying image but then your face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
		*** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
* [Stare]
	You stare and stare and watch as the reflection begins to deform. 
	The skin begins to sag. 
	Parts of it begins to rot. 
	And blood begins to flow from the rips in the skin. 
		** [Look away]
			You try to look away from the horrifying image but then your face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			*** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				**** ["I don't want to die."]
					As our consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			*** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours
		** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			*** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours
			*** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours

=== lookaway ===
You try to look away, but you're frozen, as if something was grabbing you and holding you down.
* [Run]
	You don't know why your body doesn't move. All you do is stare at the reflection in front of you. At those eyes that were watching you. 
	** [Look away]
		You try to look away again but you can't. You stare and stare and watch as the reflection begins to deform. 
		The skin begins to sag. 
		Parts of it begins to rot. 
		And blood begins to flow from the rips in the skin.
		*** [Try again]
			You try to look away from the horrifying image but then your face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
		*** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
	** [You stared] 
		You stared and stared and watched as the reflection begins to deform. 
		The skin begins to sag. 
		Parts of it begins to rot.
		And blood begins to flow from the rips in the skin. 
		*** [Look away]
			You try to look away from the horrifying image but then your face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
		*** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			**** [Yell]
			You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
			**** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				***** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					****** [...] -> fewHours
* [Stare]
	You stare and stare and watch as the reflection begins to deform. 
	The skin begins to sag. 
	Parts of it begins to rot. 
	And blood begins to flow from the rips in the skin. 
		** [Look away]
			You try to look away from the horrifying image but then your face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			*** [Yell]
				You yell with all your might, hoping someone will come to help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours
			*** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours
		** [And you still stare] 
			And you still stare, even as your own face begins to do the same. You're in shock as you feel a mixture of sensations: 
			The sagging of your skin. 
			The pungent smell of rotting flesh. 
			The warm blood that oozes down your face.
			*** [Yell]
				You yell with all your might, hoping someone will come help you. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours.
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours
			*** [Stop]
				You want the pain to stop, but it doesn't, you try to cry out but you can't. You look at the mirror and see a sinister smile that stretched from ear to ear on the face that isn't yours. 
				**** ["I don't want to die."]
					As your consciousness fades away, you feel those malice eyes on you. "I don't want to die." That was your last thought before you couldn't feel anything at all.
					***** [...] -> fewHours

=== fewHours ===
It's one in the afternoon. From reading all the news articles you understand what's happening; don't look at yourself in mirrors.
* [You know]
	You know what you're not suppose to look at.
	-> running
* {info == 3} [All mirrors?]
	After studying the news articles more in-depth you realize you only die when you can see a clear reflection of yourself. There can't be any haze or tinted color. 
	-> running
* {info < 3} [What?]
	All these deaths keep happening because people look into mirrors. "How is that even possible?" Things just get crazier and crazier. 
	-> running
* [What a joke]
	At first you didn't believe it but now this is too serious to be a joke.
	-> running

=== running ===
Your running.
* [Why?]
	All the roads are jammed with cars and buses. A few hours after the initial news alert, all you could hear were the screeching of cars and the smells of burning rubber and blood. People are panicked.
	** [...] -> stairs
* [Anxious?]
	You're anxious, no matter how much you called or texted, you couldn't get a hold of your brother.
	** [...] -> stairs
* {info < 2} [Run faster]
	You run faster, a panic that you haven't felt before. You run past the crashed vehicles and screaming people in agony.
	** [...] -> stairs
* {info > 2} [Surroundings?]
	It's hectic. People scream in agony, bodies lay on the sidewalk, under vehicles, and behind the wheel. You're terrified. You run faster, you have to get to your apartment, you have to know if your brother is ok.
	** [...] -> stairs

=== stairs ===
Breathing heavily, you finally arrive at the stairs to your apartment.
* [Catch your breath]
	You put your hand on the railing, holding yourself from collapsing while taking deep breaths.
	-> stairs
* [Hesitate]
	You hesitate at the stairs to your apartment. Questions begin formulating in your head, "Is he alright? Is he dead? What would you do if you found a body? What if he's still asleep?"
	-> stairs
* [Walk away?]
	You're scared. You're panicked. You thought you could handle it, but now you're not sure. "I don't know what to do."
	** [Go inside]
		You take a deep breath and gather the courage to go inside. You walk up the stairs and to your apartment door.
		*** [Room 305] -> apartment
	** [Walk away]
		You can't do it, you can't go inside. You turn around.
		*** Walk away 
		~ raise(regret)
		-> survival

=== apartment ===
You stand in front of your apartment door. #305. You fumble for the key that's in your pocket and unlock the door. 
* [Go inside]
	Placing the key in your pocket, you walk into your apartment. You look at the shoe rack. "His shoes are still here."
	** [Kitchen]
		You walk into the kitchen. 
		{cleanKitchen} The mess you made this morning has been cleaned. 
			*** [Worry]
				After seeing the cleaned mess, you know he has already woken up.
				**** [Call his name]
					"Drew!" "DREW!!" You called as you're walking to his bedroom. You smelled something odd...
						***** [Bathroom] -> findBody
				**** [Go to living room] -> livingRoom
		{leaveKitchen} The mess you made this morning hasn't been cleaned. 
			*** [Hope]
				After seeing the mess, you begin to think he's still in bed. -> livingRoom
	** [Living Room] -> livingRoom
* [Walk away]
	You can't do it, you can't go inside. You turn around.
	** Walk away 
	~ raise(regret)
	-> survival

=== livingRoom ===
You walk into the living across from the kitchen. 
{tv: 
	The TV is still on, it's on the News channel but all you see is an empty studio.
- else:
	The TV is off. You get your hopes up thinking your brother is still in bed. 
}
* [Call his name]
	"Drew!" "DREW!!" You called as you're walking to his bedroom. You smelled something odd...
		** [Bathroom] -> findBody

=== findBody ===
The door to the bathroom was left ajar. You slowly open the door, and you see a silhouette of a body on the ground.
You cry out.
The face has been deformed.
Dry blood covered the body and floor. 
You kneel down.
* [It's not him] -> denial
* [It's not him] -> denial
* [It's not him] -> denial

=== denial ===
You're in denial, you don't want to believe it. And as you see the watch he wears every day and night on his wrist, as you recognize the patterns on the PJ's he hadn't changed out of, you hold the body close to you. And weep.
* [...] 
-> letting_go

=== letting_go ===
You wake up with the sunlight beaming from the bathroom window, with the harsh reality that still lays next to you.
* [Wait]
	You take a moment longer with your brother. You don't want to leave, but you know you can't stay.
	** [Memento] -> memento
	** [Get up]
		You take one last look at Drew before you exit the bathroom. 
		*** [Close the door] -> closed
		*** [Leave it open] -> opened
* [Leave]
	You take one last look at Drew before you exit the bathroom.
	** [Close the door] -> closed
	** [Leave it open] -> opened

=== memento ===
You take Drew's watch off. Wiping it clean and wearing it around your wrist. You take one last look at Drew before you exit the bathroom.
* [Close the door] -> closed
* [Leave it open] -> opened

=== opened ===
You leave the door opened behind you.
* [Your Room] -> your_room
* [Kitchen] -> apart_kit

=== closed ===
You close the door behind you. 
* [Your Room] -> apart_room
* [Kitchen] -> apart_kit

=== apart_room ===
{your_room: 
	There's nothing else you fine useful in your room.
- else:
	You walk into your room and look out the window. Your view is partially blocked by the ladder of the fire escape, but you can still see the streets filled with cars and bodies.
}
-> your_room

=== your_room ===
* [Investigate]
	Looking around the room you see your backpack. You take it{apart_kit: and place your other items in the bag}.
	** [Gather stuff]
		You look around your room for anything useful, you grab your pocket knife, a blanket, and some clothes.
			*** [Kitchen] -> apart_kit
+ [Kitchen] -> apart_kit

=== apart_kit ===
{stuff == 2: 
	There's nothing else in the kitchen. 
-else: 
	You walk into the kitchen.
}
* [Food]
	~ raise(stuff)
	-> food
* [Water]
	~ raise(stuff)
	-> water
* {stuff == 2}[Living Room] -> apart_liv
* {stuff == 2}[Your Room] -> apart_room

=== food ===
There not much food since you and Drew usually eat out. You find a pack of granola bars and take it with you.{your_room: You place it in your bag.}
+ {not water}[Kitchen] -> apart_kit
+ {your_room}[Living Room] -> apart_liv
+ [Your Room] -> apart_room

=== water ===
You find a water bottle and fill it up with water.{your_room: You place it in your bag.}
+ {not food}[Kitchen] -> apart_kit
+ {your_room}[Living Room] -> apart_liv
+ [Your Room] -> apart_room

=== apart_liv ===
Before you could begin searching, you hearing knocking.
* [Stay still]
	You stay very still, you hear the knocking again but it's closer this time. Did you lock the front door?
	** [Go to the door]
		You walk quickly but quietly to the door. As you fumble for the key in your pocket, you hear knocking. It's very close. There is a jingle of keys and then a creak, you can barely hear someone in a hushed tone, "...won't be happy...here either."
		-> lock_door
		*** [Kitchen]
			You start to back up slowly but your elbow hits the edge of the shoe rack with a thud. You freeze.
			**** [...] -> chase
		*** [Your Room]
			You start to back up slowly but your elbow hits the edge of the shoe rack with a thud. You freeze.
			**** [...] -> chase
* [Where?]
	The knocking sounds quite close, maybe three doors down from your apartment. Did you lock the front door?
	** [Go to door] -> lock_door
		You walk quickly but quietly to the door. As you fumble for the key in your pocket, you hear knocking. It's very close. There is a jingle of keys and then a creak, you can barely hear someone in a hushed tone, "...won't be happy...here either."
		-> lock_door
		*** [Kitchen]
			You start to back up slowly but your elbow hits the edge of the shoe rack with a thud. You freeze.
			**** [...] -> chase
		*** [Your Room]
			You start to back up slowly but your elbow hits the edge of the shoe rack with a thud. You freeze.
			**** [...] -> chase
* [Go to the door]
	You slowly and quietly walk to your door. You hear knocking again, but it's much closer this time. You hear a jingle of keys and then a creak, you can barely hear someone in a hushed tone, "...won't be happy...here either."
	** [Lock door] -> lock_door
	** [Kitchen]
		You start to back up slowly but your elbow hits the edge of the shoe rack with a thud. You freeze.
		*** [...] -> chase
	** [Your Room]
		You start to back up slowly but your elbow hits the edge of the shoe rack with a thud. You freeze.
		*** [...] -> chase

=== lock_door ===
* [Lock door]
	You take your key out and lock the door with a click. You freeze.
	** [...] -> chase

=== chase ===
Silence filled the area and it felt like an eternity. You hear the sound of thumping from the apartment next to you.
* [Run out the front]
	You grab your backpack on the living room floor and throw it over your shoulders. 
	{lock_door: 
		You unlock the door and run as fast as you can. You look back and see a man coming out of the apartment next door. Your attention is drawn to the man, you don't notice the person in front of you. Your vision goes dark.
	- else: 
		You bolt out through the front door. You look back and see a man coming out of the apartment next door. Your attention is drawn to the man, you don't notice the person in front of you. Your vision goes dark.
	}   
	** [Wake up] -> strangeplace 
* {your_room}[Run to the fire escape]
	You remember the fire escape in your room. You grab your backpack on the living room floor and throw it over your shoulders. 
	{lock_door: 
		You hear the rattling of your door as you sprint to your room. "Don't you dare run from me!" you hear a man say. 
	- else: 
		You hear the loud bang of your door opening as you sprint to your room. "Don't you dare run from me!" you hear a man say. 
	}
	** [Lock room door]
		You shut the door as you enter your room and lock it.
			*** [Fire Escape]
				You pry the window open as you hear the pounding on your door. You run down the flights of stairs and climb down the ladder. You don't look back. 
				**** [Where are you?] -> strangeman
	** [Open window to fire escape]
		{lock_door: 
			You pry the window open as you hear the thumping getting closer to you. Your half-way through the window when a hand grabs your leg, you're pulled back in, you struggle with all your might but an arm grapples around your neck. You can't breathe. Your vision fades. 
		- else: 
			You pry the window open as an arm grapples around your neck. You can't breathe. Your vision fades.
		}
		*** [Wake up] -> strangeplace

=== survival ===
You're walking down the street and arrive at an intersection, you've finally come to realize how quiet it is. There are no more screams.
* [Food]
	Your stomach growls as you think of food, you short find a store.
	-> survival
* [Water]
	You've been walking under the hot sun for a while now, it's only now you realize how thirsty you are.
	-> survival
* [Look around]
	As you look around, you see that bodies have been thrown into piles. Who would have done this? You start to get an uneasy feeling.
	** [Look around some more] -> strangeman
	** [Go to the bodies] -> strangeman
	** [Find a store] -> strangeman

=== strangeplace ===
You wake up in an unknown room. It's pitch black aside from the crack of light the door provides.
* {memento} [Look at watch]
	The watch reads, 11:37 PM.
	-> strangeplace
* [Peak through the door]
	You look through the door, you see people tied up on the right and on the left figures stand in black cloaks. "The Church of Satan had accepted you with open arms. Gave you shelter, food, and water, yet you've all deceived us with your cheap conviction to our great demons. You wish to leave? I don't think so."
	** [Watch]
		You watch someone brings in an object covered by a cloth. "You don't deserve the authority the demons have given us, it's truly a pity that you can't see the true justice of this world!" He pulls the cloth. 
		*** [Turn away]
			You turn away, you don't want to watch the deaths of all those people. 
			**** [Shiny object]
				You see something shiny on the ground. 
					***** [Take it]
						You're drawn to it. Your hands feel the sharp edges and the flat surface of the object, you know what it is.
						****** [Discouraged]
							You don't want to live in a world like this. {memento} You look at Drew's watch. "I'm sorry..."
							******* [A way out]
								You've already found your resolve, you find peace in taking your regrets with you. You look down and into the mirror.
								******** [...]
								-> END
		*** [Watch]
			You don't turn away, you watch pools of blood form under the people, you watched the agony and the pain. 
			**** [...] -> decision
* [Wait]
	You wait and listen. You hear a booming voice, "The Church of Satan had accepted you with open arms. Gave you shelter, food, and water, yet you've all deceived us with your cheap conviction to our great demons. You wish to leave? I don't think so."
		** [Listen] 
		You hear people whimpering and crying, others yell back cursing the worship of the demons in the mirrors. "You don't deserve the authority the demons have given us, it's truly a pity that you can't see the true justice of this world!" You hear the screams.
			*** [Don't listen]
				You don't want to listen to the cries of the people, you cover your ears. 
					**** [Shiny object]
						You see something shiny on the ground. 
							***** [Take it]
								You're drawn to it. Your hands feel the sharp edges and the flat surface of the object, you know what it is.
								****** [Discouraged]
									You don't want to live in a world like this. {memento} You look at Drew's watch. "I'm sorry..."
									******* [A way out]
										You've already found your resolve, you find peace in taking your regrets with you. You look down and into the mirror.
										******** [...]
										-> END
			*** [Listen]
				You listen to the screams of pain and agony. 
				**** [...] -> decision

=== decision ===
{memento: 
	You look down at your watch, it reads 1:10 AM. It's quiet now. You hear footsteps and the door begins to open. A woman now stands in front of you.
- else: 
	You don't know how long it's been, but it's quiet now. You hear footsteps and the door begins to open. A woman now stands in front of you.
}
* [Who are you?]
	"If I were you, I'd be careful about what questions you ask around here."
	** [Why?] -> why
	** [Who cares!] -> why
	** [Apologize] -> why
* [Let me go]
	"If I were you, I'd be careful about what questions you ask around here."
	** [Why?] -> why
	** [Who cares!] -> why
	** [Apologize] -> why
* [What are you doing?]
	"If I were you, I'd be careful about what questions you ask around here."
	** [Why?] -> why
	** [Who cares!] -> why
	** [Apologize] -> why

=== why ===
"You're in the Church of Satan, the people here don't take questions lightly. You either follow them and live or you don't and die."
* [Agree]
	You nod your head at the warning. Another woman walks up to the door. 
	** [...] -> strangewoman
* [Disagree]
	You would rather die than follow them. Another woman walks up to the door
	** [...] -> strangewoman
* [Say nothing]
	You don't know what to say. Another woman walks up to the door
	** [...] -> strangewoman

=== strangewoman ===
"Oh, he's awake. Take him with us." Two figures grab your arms and prop you up. You follow the woman in silence. You take a left, then a right, and then down a staircase, you walk into a room where people are chained to the ground.
* [What are you doing?]
	The woman doesn't say anything, instead, she gives you a cold smile. She holds a clothed object. "Do you wish to stay here?"
	** [No] -> no
	** [Yes] -> yes
* [Say nothing]
	She gives you a cold smile while holding a clothed object. "Do you wish to stay here?"
	** [No] -> no
	** [Yes] -> yes
* [Where am I?]
	The woman doesn't say anything, instead, she gives you a cold smile. She holds a clothed object. "Do you wish to stay here?"
	** [No] -> no
	** [Yes] -> yes

=== no ===
"No? What a pity, for you that is. We take joy in hunts after all. Chain him up."
* [What's wrong with you people?!]
	"Us? No, you are the one who can't see that we live in a changed world. The demons are superior. You're now just food for them." The woman and the two figures walk out.
	** [Stupid]
		You hear a voice from the corner of the room. "You're really stupid aren't you. You had to go and yell that to her face. You'll be the first one in line for the hunt tomorrow. No one survives the hunts."
		*** [Hunt?]
			"Yea, it's exactly what it sounds like, you'll be hunted and forced to look into a mirror."
			**** [Fatigue]
				Your only choice is to accept what you're hearing, but how could the world you once knew change so much? As you sit down a wave of fatigue overcomes you, it doesn't matter what you do, you're going to die tomorrow. You drift off to sleep.
				***** [...] 
				-> END
		-> END
* [Let me go!]
	"You really want to be let go that badly? Well, now we have a hunt! You'll be first in line tomorrow morning!" She yells excitedly. The woman and the two figures walk out.
	** [Stupid]
		You hear a voice from the corner of the room. "You're really stupid aren't you. You had to go and yell that to her face. No one survives the hunts."
		*** [Hunt?]
			"Yea, it's exactly what it sounds like, you'll be hunted and forced to look into a mirror."
			**** [Fatigue]
				Your only choice is to accept what you're hearing, but how could the world you once knew change so much? As you sit down a wave of fatigue overcomes you, it doesn't matter what you do, you're going to die tomorrow. You drift off to sleep.
				***** [...] 
				-> END
* [I want to stay, I don't want to die, please]
	You pleaded with your head on the ground. "That's bad you already made your decision. Don't worry you won't die immediately, you have to wait your turn." The woman and the two figures walk out.
	** [Stupid]
		You hear a voice from the corner of the room. "You're really stupid aren't you. Do you think she's telling the truth? You're going to be first in line for the hunt tomorrow. No one survives the hunts."
		*** [Hunt?]
			"Yea, it's exactly what it sounds like, you'll be hunted and forced to look into a mirror."
			**** [Fatigue]
				Your only choice is to accept what you're hearing, but how could the world you once knew change so much? As you sit down a wave of fatigue overcomes you, it doesn't matter what you do, you're going to die tomorrow. You drift off to sleep.
				***** [...] 
				-> END

=== yes ===
"Yes? Interesting, I thought you would refuse. Then prove your resolve to me, kill him." She points to an old man chained on the ground to your left, she holds out the clothed object. 
* [Take it]
	"What are you waiting for?" The woman says.
		** [Use it on her]
			As you pull the cloth back, you spin around and tackle the woman, you hold the mirror in front of her. She starts to maniacally laugh. "You think that works on me? I've already been accepted!" She kicks you and pins your arms down.
			*** [Kick her]
				You kick and knee her in the stomach and chest. She loses some strength in her grip, and you shove her off. 
				**** [Run] -> runningout
			*** [Headbutt]
				You headbutt her when she gets closer to talk to you. One of her hands instinctively moves towards her face. You see a chance and shove her off. 
				**** [Run] -> runningout
			*** [Struggle]
				You struggle under her grip as she brings the mirror in front of you. 
				**** [Struggle]
					The two figures that brought you down here are now helping her hold you down. You look into the mirror and begin to hack and cough. You feel a sharp pain from your stomach. The woman gets up, "You shouldn't have done that! You should've accepted them with open arms!"
					***** [Fuck you!]
						You manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							****** [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									******* ["I don't want to die."]
										You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										******** [...]
										-> END
					***** [Go to hell!]
						You manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							****** [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									******* ["I don't want to die."]
										You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										******** [...]
										-> END
					***** [Say nothing]
						You say nothing as the sharp pain begins to move throughout your body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							****** [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									******* ["I don't want to die."]
										You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										******** [...]
										-> END
		** [Use it on the old man]
			You pull the cloth back and the old man accepts what's about to happen, he looks into the mirror. You cover your nose and mouth as he begins to cough up blood. He hacks and vomits out blood. You step back a bit as a pool begins to form around the man. When he finally becomes motionless, all you hear is the laughter of the woman behind you. 
			You've joined the Church of Satan.
			*** [...]
			-> END

=== runningout ===
You start running towards the door you came from. The two figures are running towards at you. One has a bat and is holding it with both hands, and the other has nothing, getting ready to tackle you. 
* [Attack the one with the bat] -> bat
* [Attack the one without one]
	You dodge the one who swings his bat at you, but you are tackled by the other person. You fall to the ground. 
	** [Struggle]
		You struggle under their grip as the woman with the mirror walks up to you. 
		*** [Struggle]
			The two figures are now pinning you down as the mirror is brought to your face. You look into the mirror and begin to hack and cough. You feel a sharp pain from your stomach. "You shouldn't have done that! You should've accepted them with open arms!"
			**** [Fuck you!]
				You manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
					***** [Struggle]
						Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
							****** ["I don't want to die."]
								You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
								It's your dead end.
								You're still afraid of it.
								******* [...]
								-> END
			**** [Go to hell!]
						You manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							***** [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									****** ["I don't want to die."]
										You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										******* [...]
										-> END
			**** [Say nothing]
				You say nothing as the sharp pain begins to move throughout your body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
					***** [Struggle]
						Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
							****** ["I don't want to die."]
								You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
								It's your dead end.
								You're still afraid of it.
								******* [...]
								-> END
* [Dodge both]
	You dodge both and head straight to the door, and push it open. You are now running down the hallway. The hallway splits into three directions.
	-> direction

=== bat ===
You dodge the one charging at you and push the one with the bat. He falls and you grab the bat in the process. You open the door and run down the hall. The hallway splits into three directions.
-> direction

=== direction ===
* [Up]
	You run up the stairs and it leads into another hallway. 
	-> direction2
* [Right] -> dead_right
* [Left] -> dead_left

=== direction2 ===
* [Left] -> dead_left
* [Right]
	You run to the right, some people come out of their room to see all the commotion. You run past surprised faces and reach the end of the corridor. 
	-> direction3

=== direction3 ===
* [Left]
	You take a left, you sprint down the hall and see the main door. You run faster, past the room with dried blood all over the floor.
	** [Open door]
		You open the door and run out. You're at an intersection. Cars and bodies still fill the streets and are illuminated by street lamps.
		*** [Hide]
			The piles of bodies that surround a truck draws your attention. There are so many bodies that you can only see the top half of the truck. You see a small opening on the side of that leads under the truck. You crawl through.
			**** [Hide opening]
				You pull a body over the opening, leaving a small crack. You're under the truck. Your heart pounds loudly in your chest, you stay quiet. Through a small opening, you watch as figures run out with guns in their hand. You see the woman, "Find him, bring him to me, I want to kill him!"
				***** [Don't move]
					You stay quiet and very still, watching figures running out and back in reporting. After a while, you don't hear the yelling of commands, you don't hear the stomping of feet or the clanking of guns. You can't help but feel a wave of fatigue and drift off to sleep.
					****** [...]
					-> END
		*** [Keep running]
			You keep running as you hear footsteps behind you. A gunshot rings and echos between the buildings and pain shoots up your leg. You fall down onto the pavement and you feel hands pin you down.
			**** [Struggle]
				You struggle under their grip as the woman with the mirror walks up to you. 
				***** [Struggle]
					The mirror is brought to your face and as you look at it, you begin to hack and cough. You feel a sharp pain from your stomach. "You shouldn't have done that! You should've accepted them with open arms!"
					****** [Fuck you!]
						With your good leg, you manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							******* [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									******** ["I don't want to die."]
										You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										********* [...]
										-> END
					****** [Go to hell!]
						With your good leg, you manage to kick her in the shin as a sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							******* [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									******** ["I don't want to die."]
										You can't hear anything, you can't see anything, you numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										********* [...]
										-> END
					****** [Say nothing]
						You say nothing as the sharp pain begins to move throughout your body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
							******* [Struggle]
								Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
									******** ["I don't want to die."]
										You can't hear anything, you can't see anything, you numb. You make wishes that you know won't come true. 
										It's your dead end.
										You're still afraid of it.
										********* [...]
										-> END

* [Right] -> dead_right

=== dead_right ===
You make a right and hit a dead end. The two figure grab and push you down.
* [Struggle]
	You struggle under their grip as the woman with the mirror walks up to you. 
	** [Struggle]
		The mirror is brought to your face and you look at it. You feel a sharp pain from your stomach and begin to hack and cough. "You shouldn't have done that! You should've accepted them with open arms!"
		*** [Fuck you!]
			You manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
				**** [Struggle]
					Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
						***** ["I don't want to die."]
							You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
							It's your dead end.
							You're still afraid of it.
							****** [...]
							-> END
		*** [Go to hell!]
			You manage to kick her in the shin as the sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
				**** [Struggle]
					Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
						***** ["I don't want to die."]
							You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
							It's your dead end.
							You're still afraid of it.
							****** [...]
							-> END
		*** [Say nothing]
			You say nothing as the sharp pain begins to move throughout your body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
				**** [Struggle]
					Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
						***** ["I don't want to die."]
							You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
							It's your dead end.
							You're still afraid of it.
							****** [...]
							-> END

=== dead_left ===
You make a left and hit a dead end. The two figure grab and push you down.
* [Struggle]
	You struggle under their grip as the woman with the mirror walks up to you. 
	** [Struggle]
		The mirror is brought to your face and you look it. You feel a sharp pain from your stomach and begin to hack and cough. "You shouldn't have done that! You should've accepted them with open arms!"
		*** [Fuck you!]
			You manage to kick her in the shin as a sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
				**** [Struggle]
					Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
						***** ["I don't want to die."]
							You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
							It's your dead end.
							Your still afraid of it.
							****** [...]
							-> END
		*** [Go to hell!]
					You manage to kick her in the shin as a sharp pain begins to move throughout your whole body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
						**** [Struggle]
							Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
								***** ["I don't want to die."]
									You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
									It's your dead end.
									Your still afraid of it.
									****** [...]
									-> END
		*** [Say nothing]
			You say nothing as the sharp pain begins to move throughout your body and you start to convulse. You begin to hack and cough up blood and your body begins to feel hot and itchy.
				**** [Struggle]
					Your limbs are too weak. You're vomiting blood now, and as it pools around you, your vision begins to fade.
						***** ["I don't want to die."]
							You can't hear anything, you can't see anything, your whole body is numb. You make wishes that you know won't come true. 
							It's your dead end.
							Your still afraid of it.
							****** [...]
							-> END

=== strangeman ===
You move quietly over and between cars. You hear footsteps that echoed between the tall buildings. 
* [Surprised]
	You jump with surprise as you see a woman with ragged clothes limping towards you.
		** [Wait]
			As you stared and waited, you started to see multiple figures wearing black cloaks coming from around the building.
			*** [Hide] 
			~ raise(regret)
			-> hiding
		** [Help]
			You start walking towards the limping woman. "Hey, do you..." your voice cuts off when you see multiple figures wearing black cloaks coming from around the building. 
			*** [Hide] 
			~ raise(regret)
			-> hiding
		** [Hide]
			You're frightened and hide behind a car. As you look up, you see multiple figures wearing black cloaks coming from around the building. 
			*** [Stay hidden] 
			~ raise(regret)
			-> hiding
* [Hide]
	You hide behind a car and see a woman with ragged clothes limping towards your direction.
		** [Stay hidden]
			You keep yourself hidden as you see multiple figures wearing black cloaks coming from around the building.
			*** [Keep quiet] 
			~ raise(regret)
			-> hiding
		** [Reveal yourself]
			You step out from behind the car, you were about to ask the woman if she needed help until you see multiple figures wearing black cloaks coming from around the building.
			*** [Hide] 
			~ raise(regret)
			-> hiding
* [Look]
	You see a woman with ragged clothes limping towards your direction.
		** [Hide]
			You're frightened and hide behind a car. As you look up, you see multiple figures wearing black cloaks coming from around the building.
			*** [Stay hidden] 
			~ raise(regret)
			-> hiding
		** [Help]
			You start walking towards the limping woman. "Hey, do you..." your voice cuts off when you see multiple figures wearing black cloaks coming from around the building. 
			*** [Hide] 
			~ raise(regret)
			-> hiding
		** [Wait]
			As you stared and waited, you started to see multiple figures wearing black cloaks coming from around the building.
			*** [Hide] 
			~ raise(regret)
			-> hiding

=== hiding ===
Hiding behind a car, you hear a gunshot and a thud. The limping woman is now on the ground, desperately trying to crawl away from the figures. 
* [How many?]
	You counted 7 of them. 
	-> hiding
* [Who?]
	You don't know who they are.
	-> hiding
* [Watch]
	"No, please, don't make me! I regret it, I regret leaving, I'll join again. Please!" You don't understand what the woman is talking about. You take a peak and you see the figures grab onto the woman, they hold her down. One of the figures holds onto a clothed object.
	** [Get a closer look]
		You quietly maneuver between cars. The clothed object is placed in front of the woman. She tries to close her eyes, but the other forces them open. 
		*** [Stay quiet]
			You stay silent as you listen to the figure, "The Church of Satan had accepted you with open arms. Gave you shelter, food, and water, yet you deceived us with your cheap conviction to our great demons. You wish to leave? I don't think so." He reveals what's hidden under the cloth. A mirror.
			**** [Stay hidden]
				The woman struggles to break free, she begins to scream in agony. The reflection of the sun in the mirror starts burns her skin, turning it red as it starts to peel, and spots of white, and black, charred skin begin to form. You can't bear to watch and look away. 
				***** [Run] -> get_caught
				***** {regret == 2}[Regret] -> regretting
	** [Stay where you are]
		You see the clothed object being placed in front of the woman. She struggles but to no avail. 
		*** [Stay where you are]
			The figure with the object seems to be saying something, you could only make out "The Church of Satan...deceived...your cheap conviction...great demons." He reveals what was hidden under the cloth. A mirror. 
			**** [Stay hidden]
				The woman struggles to break free, she begins to scream in agony. The reflection of the sun in the mirror starts burns her skin, turning it red as it starts to peel, and spots of white, and black, charred skin begin to form. You can't bear to watch and look away. 
				***** [Run] -> get_caught
				***** {regret == 2}[Regret] -> regretting
		*** [Get closer]
			You get closer, you hear what the figure says. "The Church of Satan had accepted you with open arms. Gave you shelter, food, and water, yet you deceived us with your cheap conviction to our great demons. You wish to leave? I don't think so." He reveals what's hidden under the cloth. A mirror.
			**** [Stay hidden]
				The woman struggles to break free, she begins to scream in agony. The reflection of the sun in the mirror starts burns her skin, turning it red as it starts to peel, and spots of white, and black, charred skin begin to form. You can't bear to watch and look away. 
				***** [Run] -> get_caught
				***** {regret == 2}[Regret] -> regretting

=== get_caught ===
You start to panic, "I have to get out of here!" As you get up you hear a shout. "Hey, someone's over there!"
* [Look behind you]
	You look behind you and some of the figures had shifted away from the screaming woman and are moving towards your direction.
	-> get_caught
* [Run]
	You begin to run, but your legs are numb from squatting for too long. You trip.
	** [Look behind you]
		You see the figures closing in on you. You get up, and start to run but you feel something hit the back of your head with a thud. You fall to the ground.
		*** [Wake up] -> strangeplace
	** [Shit]
		The figures are closing in on you. You get up, and start to run but you feel something hit the back of your head with a thud. You fall to the ground.
		*** [Wake up] -> strangeplace

=== regretting ===
* [Close your eyes]
	You close your eyes, you're just so tired of everything. "Why did this happen?"
	-> regretting
* [Shiny object]
	You see something shiny on the ground. You sit down. 
		** [Take it]
		You're drawn to it. Your hands feel the sharp edges and the flat surface of the object, you know what it is.
			*** [Discouraged]
			You don't want to live in a world like this. {memento} You look at Drew's watch. "I'm sorry..."
				**** [A way out]
				You've already found your resolve, you find peace in taking your regrets with you. You look down at the mirror and at a face that isn't yours.
					***** [...]

-> END