# Python console calculator
def calculator():
    print("Simple Python Calculator")
    while True:
        try:
            expr = input("Enter expression (or 'exit' to quit): ")
            if expr.lower() == "exit":
                break
            print("Result:", eval(expr))
        except Exception as e:
            print("Error:", e)

if __name__ == "__main__":
    calculator()
