# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.new
# user.password = '123456'
# user.password_confirmation = '123456'
# user.first_name = 'jesse'
# user.last_name = 'kolb'
# user.save
user = User.create!({ email: 'abc@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'jesse', last_name: 'kolb' })
tr = ['manual', 'automatic']

car = Car.new
car.make = 'Chevrolet'
car.model = 'Corvet'
car.transmission = tr.sample
car.seats = 5
car.price = 250
car.suburb = 'Brooklyn'
car.user = user
car.car_type = 'sports'
car.save!

car = Car.new
car.make = 'Holden'
car.model = 'Commodore'
car.transmission = tr.sample
car.seats = 5
car.price = 75
car.suburb = 'la brea'
car.user = user
car.car_type = 'sedan'
car.save!

car = Car.new
car.make = 'Ferrari'
car.model = '458'
car.transmission = tr.sample
car.seats = 2
car.price = 450
car.suburb = 'Hollywood'
car.user = user
car.car_type = 'sports'
car.save!
