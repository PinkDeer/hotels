20.times do
  hotel = Hotel.create 	:name => "#{Faker::Company.name}",
                        :rating => rand(1..20),
                        :price => rand(20000..40000),
                        :assessement => rand(1..10)
  puts hotel.inspect
end
