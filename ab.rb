cars = {
  "Toyota Corolla" => {
    year: 2022,
    color: "Blue",
    mileage: 15000,
    price: 20000
  },
  "Honda Civic" => {
    year: 2021,
    color: "Red",
    mileage: 12000,
    price: 22000
  },
  "Ford Mustang" => {
    year: 2023,
    color: "Black",
    mileage: 5000,
    price: 35000
  }
}

# 1.Which car has the highest price in the hash?
def car(price)
  price.max_by{|k,v| v[:price]}
end 
car(cars)

# 2. What is the mileage of the Honda Civic?
def car(mileage)
  mileage['Honda Civic'][:mileage]
end 
car(cars)

# 3. List all cars that are colored 'Blue'.
def car(color)
  color.select {|k,v| v[:color] == 'Blue'}
end 
car(cars)

# 4. How many cars are listed in the hash?
def car(listed)
  listed.size
end 
car(cars)

# 5. Which car is the newest?
def car(year)
  year.max_by{|k,v| v[:year]}
end 
car(cars)

# 6. Which car has the lowest mileage?
def car(mileage)
  mileage.min_by{|k,v| v[:mileage]}
end 
car(cars)

# 7. Which cars are from the year 2022 or later?
def car(year)
  year.select {|k,v| v[:year] == 2022}
end 
car(cars)

# 8. Are there any cars with mileage greater than 10,000 miles?
def car(mileage)
  mileage.select {|k,v| v[:mileage] > 10000}
end 
car(cars)

# 9.What is the average price of the cars listed?
def car(average)
price = 0
average.each{|k,v| price += v[:price]}
average_price = price / average.size
end 
car(cars)

