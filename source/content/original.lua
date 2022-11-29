original = {
    [1] = {
        textbody = "It all begin with one singular incident. The sound of \"Bang\" ran all across the island. You were on a ship nearby, and you heard the gun-shot. You chose to go out of the cabin and have a look; accidentally, the ship hit something, and you fall over the ship.\nYou swam to the shore with all your might, you were so tired when you reach the beach that you fell asleep. As you woke up, you found yourself in the coast of some sorts. Infront of you is a great forest.\nYou decided to go deeper in the forest to gather more food and supplies.\nYou walked around and a huge chateau nearby. What would you do?",
        optionbody = "Would you rather Go into the chateau, or would you Not Go into the chateau?",
        options = {
            [1] = {
                text = "Go",
                nextnode = 11
            },
            [2] = {
                text = "Not Go",
                nextnode = 12
            }
        }
    },
    [11] = {
        textbody = "You entered the chateau from the front gate. A huge man with a weird expression greeted you. He is a hunter too! He told you his name -- Zaroff, about his voyage to different places and chatted with you about hunting. After supper, he showed you his \"training school\": A cellar which prisoners were kept. General Zaroff told you all about his hunting game, he capture human-beings, the only animal that can reason, he set them free on this island and hunt them down for pleasure. He asked you to hunt with him, you refused, this is murder!\nHe forced you to play this game, you have no choice. You need to survive 3 days in the forest without being hunted down. He supplied you with cloths, some food, and a knife. You were forced out of the chateau and the gate closed behind you.",
        option = "Moving On -- Playing the Game!",
        nextnode = 111
    },
    [111] = {
        textbody = "Now that you are forced to play the game with general Zaroff, the only thing that you can do is proceed playing the game. There is no other way! If you want to survive, You will have to fight your way through!",
        option = "Moving On - After Leaving the Chateau",
        nextnode = 112
    },
    [112] = {
        textbody = "You walked through the jungle. To confuse general Zaroff, you've decided to leave several fake trials which will hopefully help confuse him. You are confident that there is no way a zealous hunter like general Zaroff can trace you!",
        option = "Moving On -- Above the Tree",
        nextnode = 113
    },
    [113] = {
        textbody = "The night falls and you climbed up a tree. You are tired and you must get some rest. However, you soon realized something was coming through the bush and towards you. It was general Zaroff! He was coming for you!\nThe fake trails that you've left didn't work. General Zaroff is getting closer and closer to you! You hold your breath and prayed. You reexamined the situation and decided that if you want to run away, then this might be the only chance to do so!",
        optionbody = "Would you rather Stay or Run Away?",
        options = {
            [1] = {
                text = "Stay",
                nextnode = 1131
            },
            [2] = {
                text = "Run Away",
                nextnode = 1132
            }
        }
    },
    [1131] = {
        textbody = "Zaroff moved closer towards the tree and his eyes traveled inch by inch up the tree. You calmed down, froze, and tried not to make a sound.	Zaroff's sharp eyes stopped right before they reached the limb which you are hiding on. After that, he smirked and slowly walked away.\nHe was playing with you! He was having fun! General Zaroff must have saw you and decided not to kill you. You decided that you will have to move, you walked towards the other side of the island.",
        option = "Moving On -- On the Way",
        nextnode = 11311
    },
    [11311] = {
        textbody = "On the way, you created a trap using a dead-tree. \"Hopefully,\" You said to yourself, \"this will stop general Zaroff by hurting or even killing him!\" Shortly after you finished setting up the trap, general Zaroff followed your trail again with his weapons and bloodhounds. He was caught by the trap and was hurt:\n\"Rainsford,\" called the general, \"if you are within sound of my voice, as I suppose you are, let me congratulate you. Not many men know how to make a Malay mancatcher. Luckily for me I, too, have hunted in Malacca. You are proving interesting, Mr. Rainsford. I am going now to have my wound dressed; it's only a slight one. But I shall be back. I shall be back.\"\nGeneral Zaroff is going to comeback shortly, he was only slightly injured. The game is not over. You have survived 1 nights, still 2 left to go. You encouraged yourself and continued to move forward.",
        option = "Moving On -- In the Swamp",
        nextnode = 11312
    },
    [11312] = {
        textbody = "(The next day…)\nYou have now reached the swamp.\nYou've decided that you are going to make another trap. You dug a hole in the ground where you deployed sharp sticks from samplings which pointed up. You covered the hole with a rough carpet and some branches. You waited for the hunter at a spot nearby which you can crouch down a take a small break.\nThe pursuer came, along with serval barking dogs. Seconds later, you heard the sound of cracking from the branches and carpet of your trap and a scream of pain.\nYou were happy, your pursuer fell down the trap and is probably dead. You leaped out of your hiding place of concealment but, then you cowered back. General Zaroff was standing 3 feet away from the trap and wailed at him:\n\"You've done well, Rainsford,\" the voice of the general called. \"Your Burmese tiger pit has claimed one of my best dogs. Again you score. I think, Mr. Rainsford, I'll see what you can do against my whole pack. I'm going home for a rest now. Thank you for a most amusing evening.\"\nYou've survived 2 nights, just 1 left to go!",
        option = "Moving On -- The Next Day",
        nextnode = 11313
    },
    [11313] = {
        textbody = "(The next day…)\nYou heard the hounds again; they are coming back for you! You were exhausted and you need to think quick and act now! What would you do?",
        optionbody = "Would you rather Stay and fight with the knife issued to you, Flee, or Execute the Wildest Idea that You'll even have in your life?",
        options = {
            [1] = {
                text = "Stay and fight with the knife issued to you",
                nextnode = 113131
            },
            [2] = {
                text = "Flee",
                nextnode = 113132
            },
            [3] = {
                text = "Execute the Wildest Idea that You'll even have in your life",
                nextnode = 113133
            }
        },
    },
    [113131] = {
        textbody = "Seconds later, 2 hounds leaped towards you. You immediately cut of their heads with the knife but 2 more bite your leg and you fell to your knees. General Zaroff took out a pistol and aimed it at your head. You have nowhere to go, what would you do now?",
        optionbody = "Would you Yield or Fight/Struggle?",
        options = {
            [1] = {
                text = "Yield",
                nextnode = 1131311
            },
            [2] = {
                text = "Fight/Struggle",
                nextnode = 1131312
            }
        },
    },
    [1131311] = {
        textbody = "\"I yield! You win!\" You shouted at the top of your lungs, \"Please, spare my life!\"\n\"Nah,\" General Zaroff replied calmly, \"I win, and now, you will die.\"\n\"Please, no! There is no need for you to murder another man, I spare my life! I will shut my mouth and never tell anybody what I see here at the Ship-Wreck island!\"\n\"No. You are a good man, and you are one of the best hunters and prey I've ever seen\" General Zaroff laughed, \"As an award of recognition, you will die painlessly.\" Then, general Zaroff took out the .22 pistol from his pocket, aimed at your face.\n\"Boom!\"\n\nYou died."
    },
    [1131312] = {
        textbody = "You tried to stand on your feet and fight, but General Zaroff gave you no chance. He sticked the knife into your throat. You tried to scream and stop the bleeding as the blood gushed out of you neck. You started to lose consciousness and your vision starts of get blurry.\n\nYou died!"
    },
    [113132] = {
        textbody = "You fled from the scene; you ran as fast as you can. However, the hounds were faster than you are. They bit you on the way and you were badly hurt. Still, you continued to run for your life.\nGeneral Zaroff raised his .22 pistol and aimed it at you. There was no escape.\n\n\"Boom\"\n\nYou were shot in the stomach and you fell to your knees. General Zaroff followed his hounds and sat next to you. \"My friend,\" he said, \"You lost the game, and your penalty is death!\"\nThe dogs leaped on you and started to tear pieces of flesh off of your body. You screamed and begged for mercy, but it was useless.\n\nYou died!"
    },
    [113133] = {
        textbody = "You ran for your life! You knew that it can be hard to outrun the bloodhounds. Therefore, you applied several tricks and unique skills along way to get rid of the hounds behind your back. However, they managed to follow you where-ever you go by following your scent.",
        optionbody = "You know that there is no escape if the hounds bite you. Therefore, you decided to do the following:",
        options = {
            [1] = {
                text = "Yield",
                nextnode = 1131331
            },
            [2] = {
                text = "Jump down the Cliff",
                nextnode = 1131332
            }
        }
    },
    [1131331] = {
        textbody = "\"I yield! You win!\" You shouted at the top of your lungs, \"Please, spare my life!\"\n\"Nah,\" General Zaroff replied calmly, \"I win, and now, you will die.\"\n\"Please, no! There is no need for you to murder another man, I spare my life! I will shut my mouth and never tell anybody what I see here at the Ship-Wreck island!\"\n\"No. You are a good man, and you are one of the best hunters and prey I've ever seen\" General Zaroff laughed, \"As an award of recognition, you will die painlessly.\" Then, general Zaroff took out the .22 pistol from his pocket, aimed at your face.\n\"Boom!\"\n\nYou died."
    },
    [1131332] = {
        textbody = "The impact almost caused you to faint; luckily, you landed in water and you kept calm and swam towards the shore. General Zaroff's chateau is not so far away, therefore, you decided to swim there and do something to change the current situation. You don't want to be the prey anymore, maybe not the other way around which makes you a murderer, but still, you need to do something to change your fate. You decided to enter general Zaroff's chateau!",
        option = "Moving On -- In the Chateau",
        nextnode = 11313321
    },
    [11313321] = {
        textbody = "Now you've sneaked into the chateau. The ground floor is empty and the whole chateau was in pin drop silence. You felt your heart in your throat and your hands getting clammy. You waited for a second and realized that no one seems to know you are here. You knew that this is your only chance to escape the island and you have to make a thoughtful decision on what you do.",
        optionbody = "Now do you want to Explore the Chateau and Try to Find a Boat to Escape or Go Find a Weapon or Sneak into General Zaroff's Room and Kill Him",
        options = {
            [1] = {
                text = "Explore the Chateau and Try to Find a Boat to Escape",
                nextnode = 113133211
            },
            [2] = {
                text = "Go Find a Weapon",
                nextnode = 113133212
            },
            [3] = {
                text = "Sneak into General Zaroff's Room and Kill Him",
                nextnode = 113133213
            }
        }
    },
    [113133211] = {
        textbody = "The chateau is immense. You're afraid that General Zaroff will find you, therefore you searched very carefully, holding your breath and walking very softly inside the chateau. You heard noises from the second floor and you are confirmed that General Zaroff is not on the ground floor. After you secretly searched through all the rooms, you found a key that seems to be a boat key. However, you did not find a boat around.",
        optionbody = "Now, would you Go Outside and Search for the Boat or Continue Searching Inside the Chateau and look for more resources?",
        options = {
            [1] = {
                text = "Go Outside and Search for the Boat",
                nextnode = 1131332111
            },
            [2] = {
                text = "Continue Searching Inside the Chateau and look for more resources",
                nextnode = 1131332112
            },
        }
    },
    [1131332111] = {
        textbody = "You felt uncomfortable staying in the chateau for another second after all the things that happened, you are rush to get away from General Zaroff. You went to the coast and searched around. After a few hours of searching, you found the boat. You powered up the engine and left the island.\nThe sun has set, you are now surrounded by fog and absolute darkness. After you left the island, you realized that you have no supplies nor maps. Now a beam of light had appeared in front of you, seem to be indicating a channel.",
        optionbody = "Would you Follow the Light or Find Another Path?",
        options = {
            [1] = {
                text = "Follow the Light",
                nextnode = "dejavu ending"
            },
            [2] = {
                text = "Find Another Path",
                nextnode = "starvation ending"
            },
        }
    },
    ["dejavu ending"] = {
        textbody = "After the boat follows the indicated path for a while. Then all of the sudden, \"Boom!\". You boat was striked and damaged. The whole boat capsized and you are trap by the hull. You tried to swim but all your strength was used up during the day.\n\nYou drowned."
    },
    ["starvation ending"] = {
        textbody = "Surrounded by the fog on the sea, you can see nothing on the boat. You have no idea on where you are traveling toward. You have no water nor food supply.\n\nEventually, you died of dehydration."
    },
    [12] = {
        textbody = "You had decided not to go in the chateau, you looked around for food.In the forest, you saw a strong man, manybe a giant, with three \"bloodhounds\" by his side. His body is covered with blood, but since the man was not so far away, but still, you cannot see his facial expression. In addition, a name tag saying General Zaroff was printed on his shirt.",
        optionbody = "What would you do? You could:",
        options = {
            [1] = {
                text = "Decide not to Meet Him",
                nextnode = 101
            },
            [2] = {
                text = "Meet Him and Seek for Help",
                nextnode = 103
            }
        }
    }
}
