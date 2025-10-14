import os
import time

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
player = 1

# Win Flags
Win = 1
Draw = -1
Running = 0

Game = Running
Mark = 'X'

# This Function Draws Game Board
def DrawBoard():
    print(" %c | %c | %c " % (board[1], board[2], board[3]))
    print("___|___|___")
    print(" %c | %c | %c " % (board[4], board[5], board[6]))
    print("___|___|___")
    print(" %c | %c | %c " % (board[7], board[8], board[9]))
    print("   |   |   ")

# This Function Checks position is empty or not
def CheckPosition(x):
    return board[x] == ' '

# This Function Checks player has won or not
def CheckWin():
    global Game
    # Horizontal winning condition
    if board[1] == board[2] == board[3] != ' ':
        Game = Win
    elif board[4] == board[5] == board[6] != ' ':
        Game = Win
    elif board[7] == board[8] == board[9] != ' ':
        Game = Win
    # Vertical Winning Condition
    elif board[1] == board[4] == board[7] != ' ':
        Game = Win
    elif board[2] == board[5] == board[8] != ' ':
        Game = Win
    elif board[3] == board[6] == board[9] != ' ':
        Game = Win
    # Diagonal Winning Condition
    elif board[1] == board[5] == board[9] != ' ':
        Game = Win
    elif board[3] == board[5] == board[7] != ' ':
        Game = Win
    # Match Tie or Draw Condition
    elif all(space != ' ' for space in board[1:]):
        Game = Draw
    else:
        Game = Running

# Game starts here
print("Tic-Tac-Toe Game")
print("Player 1 [X] --- Player 2 [0]\n")
print("Please Wait...")
time.sleep(1)

while Game == Running:
    os.system('cls' if os.name == 'nt' else 'clear')
    DrawBoard()

    if player % 2 != 0:
        print("Player 1's chance")
        Mark = 'X'
    else:
        print("Player 2's chance")
        Mark = '0'

    try:
        choice = int(input("Enter the position between [1-9] where you want to mark:"))
    except ValueError:
        print("Invalid input! please enter a number between 1 and 9. then you want to mark")
        time.sleep(1)
        continue

    if choice < 1 or choice > 9:
        print("Invalid position! choose between 1-9.")
        time.sleep(1)
        continue

    if CheckPosition(choice):
        board[choice] = Mark
        player += 1
        CheckWin()
    else:
        print("Position already taken! choose another.")
        time.sleep(1)

os.system('cls' if os.name == 'nt' else 'clear')
DrawBoard()

if Game == Draw:
    print("Game Draw")
elif Game == Win:
    player -= 1
    if player % 2 != 0:
        print("Player 1 won")
    else:
        print("Player 2 won")
