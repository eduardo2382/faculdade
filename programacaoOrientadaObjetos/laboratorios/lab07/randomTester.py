import random

class RandomTester():
    def printOneRandom(self):
        print(random.randint(1, 10))

    def printMultiRandom(self, many):
        for num in range(1, many+1):
            print(random.randint(1, 10))

    def throwDice(self):
        return random.random(1, 6)
    
    def randomMax(self, max):
        return random.randint(1, max)
    
    def randomMinMax(self, min, max):
        return random.randint(min, max)
        