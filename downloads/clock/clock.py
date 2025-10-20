import time
import os

def digital_clock():
    while True:
        now = time.strftime("%H:%M:%S")
        os.system('cls' if os.name == 'nt' else 'clear')
        print(now)
        time.sleep(1)

if __name__ == "__main__":
    digital_clock()
