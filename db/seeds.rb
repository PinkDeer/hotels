20.times do
  hotel = Hotel.create 	:name => "#{Faker::Company.name}",
                        :rating => rand(1..20),
                        :price => rand(20000..40000),
                        :assessement => rand(1..10)
  puts hotel.inspect
end

12.times do
  criterion = Criterion.create 	:name => "#{Faker::Lorem.sentence(1, true, 3)}",
                                :color => "#{Faker::Number.hexadecimal(6)}"
  puts criterion.inspect
end

for i in 1..12 do
  for j in 1..20 do
    criterions_hotel = CriterionsHotel.create 	:criterion_id => i.to_i,
                                                :hotel_id => j.to_i
    puts criterions_hotel.inspect
  end
end