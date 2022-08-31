spot = {1: '1', 2: '2', 3: '3', 4: '4', 5: '5', 6: '6', 7: '7', 8: '8', 9: '9'}


def main_board(spot):
    board = f"|{spot[1]}|{spot[2]}|{spot[3]}|\n|{spot[4]}|{spot[5]}|{spot[6]}|\n|{spot[7]}|{spot[8]}|{spot[9]}|"
    print(board)


def turn_check(turn):
    if turn % 2 == 0:
        return 'X'
    else:
        return 'O'


def check_exist():
    if str(choice) != spot[choice]:
        print("This option already taken")
        return True


def validate_choice(choice):
    if choice not in range(1, 10):
        print("Invalid range!")
        return False
    else:
        return True

def check_win(play):
    if play > 5:
        if ((spot[1] == spot[2] == spot[3]) or (spot[4] == spot[5] == spot[6]) or (spot[7] == spot[8] == spot[9]) \
        or (spot[1] == spot[4] == spot[7]) or (spot[2] == spot[5] == spot[8]) or (spot[3] == spot[6] == spot[9]) \
        or (spot[1] == spot[5] == spot[9]) or (spot[3] == spot[5] == spot[7])) == ('X' or 'O'):  # across the top
            print(" *** !won! *** ")
            return True
        elif play == 9:
            print("DRAW")
            exit()



######MAIN#######
print('Enjoy! press "exit" to stop!')

play = 0
while play <= 9:
    main_board(spot)

    if check_win(play):
        break



    # Player Input
    choice = int(input("Select your choice: "))
    if not validate_choice(choice):
        continue

    if check_exist():
        continue

    play += 1
    spot[choice] = turn_check(play)

    # if choice == 'exit':
    #     print("Thx for Playing")
    #     play = False
