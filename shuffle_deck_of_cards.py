# First let's import random so we can shuffle cards 
import random 
 
 
# Card faces (numbers and royals) 
cardfaces = [] 
suits = ["Hearts", "Diamonds", "Clubs", "Spades"] 
royals = ["J", "Q", "K", "A"] 
deck = [] 
 
 
# Add number cards 2-10 
for i in range(2, 11): 
    cardfaces.append(str(i)) 
 
 
# Add royal faces (J, Q, K, A) 
for r in royals: 
    cardfaces.append(r) 
 
 
# Create the deck: combine faces with suits 
for suit in suits: 
    for face in cardfaces: 
        card = face + " of " + suit 
        deck.append(card) 
 
 
# Shuffle the deck 
random.shuffle(deck) 
 
 
# Print shuffled deck 
for card in deck: 
    print(card) 