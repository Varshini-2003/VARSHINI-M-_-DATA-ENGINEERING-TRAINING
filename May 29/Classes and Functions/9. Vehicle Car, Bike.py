class Vehicle:
    def __init__(self, name, wheels):
        self.name = name
        self.wheels = wheels

    def description(self):
        return f"{self.name} with {self.wheels} wheels."

class Car(Vehicle):
    def __init__(self, name, wheels, fuel_type):
        super().__init__(name, wheels)
        self.fuel_type = fuel_type

    def description(self):
        return f"{self.name} is a car with {self.wheels} wheels and runs on {self.fuel_type}."

class Bike(Vehicle):
    def __init__(self, name, wheels, is_geared):
        super().__init__(name, wheels)
        self.is_geared = is_geared

    def description(self):
        gear = "geared" if self.is_geared else "non-geared"
        return f"{self.name} is a {gear} bike with {self.wheels} wheels."


c = Car("Honda", 4, "Petrol")
b = Bike("Yamaha", 2, True)
print(c.description())
print(b.description())
