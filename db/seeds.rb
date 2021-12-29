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

image1 = 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
image2 = 'https://images.unsplash.com/photo-1489824904134-891ab64532f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1931&q=80'
image3 = 'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80'
image4 = 'https://images.unsplash.com/photo-1454971567432-a11479bb5183?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'

car = Car.new
logo = URI.open(image1)
car.photo.attach(io: logo, filename: "post.jpeg", content_type: 'image/jpeg')
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
logo = URI.open(image2)
car.photo.attach(io: logo, filename: "post.jpeg", content_type: 'image/jpeg')
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
logo = URI.open(image3)
car.photo.attach(io: logo, filename: "post.jpeg", content_type: 'image/jpeg')
car.make = 'Ferrari'
car.model = '458'
car.transmission = tr.sample
car.seats = 2
car.price = 450
car.suburb = 'Hollywood'
car.user = user
car.car_type = 'sports'
car.save!

car = Car.new
logo = URI.open(image4)
car.photo.attach(io: logo, filename: "post.jpeg", content_type: 'image/jpeg')
car.make = 'VolksWagon'
car.model = 'bus'
car.transmission = tr.sample
car.seats = 10
car.price = 200
car.suburb = 'LA'
car.user = user
car.car_type = 'mini bus'
car.save!
