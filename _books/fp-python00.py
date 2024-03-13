#PYTHON
#* FLUENT PYTHON CH 1
#A Pythonic Card Deck

import collections
Card = collections.namedtuple('Card', ['rank', 'suit'])
class FrenchDeck:
  ranks = [str(n) for n in range(2, 11)] + list('JQKA')
  suits = 'spades diamonds clubs hearts'.split()
  def __init__(self):
    self._cards = [Card(rank, suit) for suit in self.suits
    for rank in self.ranks]

  def __len__(self):
    return len(self._cards)
  def __getitem__(self, position):
    return self._cards[position]
  
beer_card = Card('7', 'diamonds')
print(beer_card)
print(beer_card.rank)
print(beer_card.suit)
# Card(rank='7', suit='diamonds')

deck=FrenchDeck()
print (len(deck))
print(deck[0], "\n")
print(deck[-1], "\n")
print(deck[:1], "\n")
print(deck[2:8], "\n")
print(deck[2:8:2], "\n")
print(deck[::-1], "\n")
print(deck[2:8][::-1], "\n")
print(deck[::], "\n")

from random import choice
print (choice(deck), "\n")
print (choice([c for c in deck]), "\n")
print(len(deck))
#pick top 3 cards
print(deck[:3], "\n")
#pick aces by skipping 13
print(deck[12::13], "\n")

for index, card in enumerate(reversed(deck)):
    if index % 9 == 0:
        print('here', card, index, "\n")

print(Card('Q', 'hearts') in deck)
print(Card('Q', 'bigbuttss') in deck)

suit_values = dict(spades=3, hearts=2, diamonds=1, clubs=0)
def spades_high(card):
  rank_value = FrenchDeck.ranks.index(card.rank)
  return rank_value * len(suit_values) + suit_values[card.suit]

for card in sorted(deck[0:7], key=spades_high):
   print(card)

for card in sorted(deck, key=spades_high):
  if card.rank == "2":
      print(card)

arr=[1,2,3,4,5]
print(arr[0:5:2])


#* numpy | array
import numpy as np
# Create vectors
va = np.array([1, 2, 3])  # Create a vector [1, 2, 3]
vb = np.array([4, 5, 6])  # Create another vector [4, 5, 6]

# Vector addition
result = va + vb
print("Vector addition:", result)

# Vector subtraction
result = va - vb
print("Vector subtraction:", result)

# Vector dot product
result = np.dot(va, vb)
print("Vector dot product:", result)

# Vector cross product
result = np.cross(va, vb)
print("Vector cross product:", result)

#* Vector, v1 = Vector(2,4)
import math
class Vector:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __add__(self, other):
        return Vector(self.x + other.x, self.y + other.y)

    def __mul__(self, scalar):
        return Vector(self.x * scalar, self.y * scalar)

    def __abs__(self):
        return math.sqrt(self.x**2 + self.y**2)

    def __repr__(self):
        return f"Vector({self.x}, {self.y})"

# Example usage
v1 = Vector(2, 4)
v2 = Vector(2, 1)
print(v1 + v2)  # Vector(4, 5)

v = Vector(3, 4)
print(abs(v))   # 5.0

print(v * 3)    # Vector(9, 12)
print(abs(v * 3))  # 15.0
