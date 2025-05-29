class BankAccount:
    def __init__(self, name, balance=0):
        self.name = name
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        if amount > self.balance:
            print("Insufficient balance")
        else:
            self.balance -= amount

    def get_balance(self):
        return self.balance


acc = BankAccount("Varshini", 100)
acc.deposit(50)
acc.withdraw(200)
print(acc.get_balance())
