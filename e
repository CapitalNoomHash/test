# By Charlie and Eunice
from os import environ
environ['PYGAME_HIDE_SUPPORT_PROMPT'] = '1'
import dice as di
import time
import os
from colored import fg
import pygame, sys

rolled_dice = 1
class Player(pygame.sprite.Sprite):
  def __init__(self, picture_path):
    super().__init__()
    self.image = pygame.image.load(picture_path)
    self.rect = self.image.get_rect(center = (400,400))
    self.current_health = 1200
    self.max_health = 1200
    self.health_bar_length = 450
    self.health_ratio = self.max_health / self.health_bar_length
    
  def update(self):
    self.health()

  def get_damage(self,amount):
    if self.current_health > 0:
      self.current_health -= amount
    if self.current_health <= 0:
      self.current_health = 0

  def get_health(self,amount):
    if self.current_health < self.max_health:
      self.current_health += amount
    if self.current_health >= 0:
      self.current_health = self.max_health

  def health(self):
    pygame.draw.rect(screen, (255,0,0), (10,10,self.current_health/self.health_ratio,25))
    pygame.draw.rect(screen,(0,0,0),(10,10,self.health_bar_length,25),4)
    

class Slime(pygame.sprite.Sprite):
  def __init__(self, picture_path):
    super().__init__()
    self.image = pygame.image.load(picture_path)
    self.rect = self.image.get_rect(center = (400,400))
    self.current_health = 400
    self.max_health = 400
    self.health_bar_length = 450
    self.health_ratio = self.max_health / self.health_bar_length
    
  def update(self):
    self.health()

  def get_damage(self,amount):
    if self.current_health > 0:
      self.current_health -= amount
    if self.current_health <= 0:
      self.current_health = 0

  def get_health(self,amount):
    if self.current_health < self.max_health:
      self.current_health += amount
    if self.current_health >= 0:
      self.current_health = self.max_health

  def health(self):
    pygame.draw.rect(screen, (255,0,0), (350,350,self.current_health/self.health_ratio,25))
    pygame.draw.rect(screen,(0,0,0),(350,350,self.health_bar_length,25),4)


  

pygame.init()
screen = pygame.display.set_mode((480,480))
clock = pygame.time.Clock()
background = pygame.image.load("background.png")
# player = pygame.sprite.GroupSingle(Player())

player = Player("Sprite1.png")
player_group = pygame.sprite.Group()
player_group.add(player)

slime = Slime("Sprite2.png")
slime_group = pygame.sprite.Group()
player_group.add(player)

while True:
  for event in pygame.event.get():
    if event.type == pygame.QUIT:
      sys.exit()
      pygame.quit()
    if event.type == pygame.KEYDOWN:
      if event.key == pygame.K_UP:
        player.get_health(200)
      if event.key == pygame.K_DOWN:
        player.get_damage(200)
        #NOTE MAKE VARIABLE ROLLED DICE, WHICH IS RETURNED? MAYBNE? THE NUMBER ROLLED OR SMTH. TALK TO CHARLEI
    if rolled_dice == 1:
      slime.get_damage(50)
    if rolled_dice == 2:
      slime.get_damage(100)
    if rolled_dice == 3:
      slime.get_damage(150)
    if rolled_dice == 4:
      slime.get_damage(50)
    if rolled_dice == 5:
      slime.get_damage(100)
    if rolled_dice == 6:
      player.get_health(200)
  pygame.display.flip()
  screen.blit(background,(0,0))
  player_group.draw(screen)
  player_group.update()
  clock.tick(60)

#above, is returne dvalue of roll or smth talk to charlie
# def roll1

red = fg('red')
blue = fg('blue')
white = fg('white')
green = fg('green')
yellow = fg('yellow')

BLACK = (0,0,0)
WHITE = (255,255,255)
print("Hello player!")
print("Please enter your name.\n")
name = input().upper()

print(f"Hello, {name} !")
print(green + "Are you ready to start your adventure? (Y / N)")

ready = (input().upper())
if ready == "N":
  print("Too bad.")
elif ready == "Y":
  print(f"Good. Let us begin your adventure, {name}")
else:
  print("Invalid response.")
  sys.exit()
time.sleep(2)
clear = lambda: os.system('clear')
clear()

print("(Press enter for the next line.)")
print(blue + "You're walking home from school. Another boring day with no cool events or anything.")
input()
print(white + "You: I'm bored...")
input()
print(blue + "When suddenly... you get hit in the head!!")
input()
print(yellow + "???: Hey, you there!")
input()
print(blue + "You turn around.")
input()

import sprite as spr

spr.image_sprite1()

print(yellow + f"Old Man: You must be {name}!")
input()
clear()
print(blue + "You turn and see an old guy who looks like he's on the verge of death")
input()
print(blue + "He's probably about to collapse. He's so old, he's like a fossil.")
input()
print(blue + "He practically said good morning to the dinosaurs he's so old.")
input()
print(blue + "Wow. How is he even standing???")
input()
print(blue + "Anyways.")
print("")
input()
clear()
print(white + "You: Who are you and how do you know my name, fossil-- I mean grandpa.")
input()
print("You: Why are you, an old guy, stalking me, a little highschool student?")
input()
print(yellow + "Old Man: Literally shut up. Oh my gosh you kids are so annoying.")
input()
print("Old Man: Anyways, once upon a time, some guy got evil magic.")
input()
print("Old Man: I stopped him, and trapped him somewhere.")
input()
print("Old Man: He broke free, but I'm too old to take care of him. It's your turn now.")
input()
clear()
print(blue + "He hands you a pair of seemingly normal dice inside a box.")
print("")
input()
print(yellow + "Old Man: Only you can stop him! You are the only hero that can save the world!")
input()
print("-or whatever heroes say to empower their pupils or something, I don't know.")
input()
print("Old Man: Anyways, you roll the dice and get some sick magic powers.")
input()
print("Old Man: Yadayada, you'll figure it out. More instructions are in the box.")
input()
clear()
print("Old Man: Anyways I'm going to go into retirement now lol cya")
input()
print(blue + "He throws down a smoke bomb, and disappears.")
input()
print("You look inside the box and it says the following:")
input()
print("1- Summon frog who dropkicks the opponent, and sometimes yourself.")
input()
print("2- Knives are thrown at the opponent.")
input()
print("3- Become buff. Your power increases 3x for 10 seconds.")
input()
print("4- Fire a lightning bolt, sometimes zaps yourself.")
input()
print("5- Ice is used to immobilize the enemy.")
input()
print("6- Heal your health.")
input()
clear()
print(green + "Suddenly, you get jumped by a slime!")

#run attacks, healthbars etc here

input()
spr.image_sprite2()
print(white + "You: Well, this game is progressing quite quickly!")
input()
print(blue + "The old man re-appears.\n")
print(yellow + "Old Man: Shut up child! The game creators are literally the coolest people ever!")
input()
print("Old Man: Game by Eunice and Charlie! Thanks to those guys for giving me life I guess.")
input()
print("Old Man: Anyways, fight the slime! Press r to roll.")
print(white + "")
roll = input()
clear()
if roll == "r":
  di.randomNum()
else:
  print("That is not 'r'! Press r please!")
  #how do i make it loop back help lol
