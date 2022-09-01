Start with a normal 52 card deck

Goal is to get as close to 21 without going over

Game has a 'dealer' and a 'player'. Both are dealt 2 cards. The player can see both their cards, but only one of the dealer's cards.

Number cards are worth their face value
Jack, Queen, and King are worth 10
Ace is worth either 1 or 11. The value is determined weather the ace makes the hand not exceed 21. If an 11 will make the hand not exceed 21, it's worth 11, if it does, it's worth 1.

First - Player's turn: Decide to either 'hit' or 'stay'.

Hit - Player draws another card
Stay - Player's turn ends. Dealer's turn starts.

If the player hits over 21, they bust, and the dealer wins. 
Player's total is whatever they have when they decide to stay

Second - Dealer's turn: Dealer must hit until total is at least 17, if bust, Player wins.

When the Player and Dealer both stay, they compare totals, and whoever has the higher total wins.

1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - Repeat until stay or bust
4. If Player busts, Dealer wins
5. Dealer turn: hit or stay
  - repeat until Dealer total >= 17
6. If Dealer busts, Player wins
7. Compare cards, highest wins

Possible cards kept in hash, to have card value
Keep users cards in an array
Bust global variable
Keep possible suits in an array
Keep possible faces in an array
Combine to get all possibilities


Ace?
