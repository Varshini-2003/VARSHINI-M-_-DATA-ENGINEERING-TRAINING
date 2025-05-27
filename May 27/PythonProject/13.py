import random
secret = random.randint(1, 100)
guess = None

while guess != secret:
    guess = int(input("Guess a number between 1 and 100: "))
    if guess < secret:
        print("Too Low")
    elif guess > secret:
        print("Too High")
    else:
        print("Correct!")
