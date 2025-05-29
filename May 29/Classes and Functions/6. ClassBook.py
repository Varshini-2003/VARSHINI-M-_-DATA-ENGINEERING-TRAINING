class Book:
    def __init__(self, title, author, price, in_stock):
        self.title = title
        self.author = author
        self.price = price
        self.in_stock = in_stock

    def sell(self, quantity):
        if quantity > self.in_stock:
            raise ValueError("Not enough stock")
        self.in_stock -= quantity


b = Book("Python", "Author", 299.99, 10)
b.sell(3)
print(b.in_stock)
