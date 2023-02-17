import os
def hello(name: str):
    print("Hello {}!".format(name))

if __name__ == "__main__":
    name = os.environ["NAME"]
    if name is None or name == '':
        name = "Sir"
    hello(name)