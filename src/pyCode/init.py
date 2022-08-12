friends = ["Jim","Karen","Kevin"]
rangeNum = 5
numberGrid = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [0]
]

def twoDimRowNestedLoop(arrayGrid):
    for row in arrayGrid:
        for column in row:
            print(column)

def arrayIter(arrayInp):
    for index in range(len(arrayInp)):
        print(arrayInp[index])

def arrayIf(rangeNum):
    for index in range(rangeNum):
        if index == 0:
            print("First Iteration")
        else:
            print("Not First")

def raiseToPower(baseNum, powNum):
    result = 1
    for index in range(powNum):
        result *= baseNum
    return result

#letter replace
def translate(phrase):
    translation = ""
    for letter in phrase:
        if letter.lower() in "aiueo":
            if letter.isupper():
                translation = translation + "G"
            else:
                translation = translation + "g"
        else:
            translation = translation +letter
    return translation

def tryCatch():
    try:
        number = int(input("Enter a number :"))
    except ZeroDivisionError:
        print("Devide by zero")
    except ValueError:
        print("Invalid Input")

