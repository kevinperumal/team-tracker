5.times {User.create(name: Faker::Name.name, password: "test", password_confirmation: "test")}

5.times {Team.create(name: Faker::Commerce.product_name)}

position = ["PG", "SG", "SF", "PF", "C"]

40.times do
  average = rand(0..35)

  position = ["PG", "SG", "SF", "PF", "C"] if position.empty?

  Player.create(name: Faker::Name.name, average: average, position: position.shuffle.shift)
end

Team.find(1).update(user_id: 1)
Team.find(2).update(user_id: 2)
Team.find(3).update(user_id: 3)
Team.find(4).update(user_id: 4)
Team.find(5).update(user_id: 5)


# (1..30).each do |player|

# Team.find(i).players << Player.find(player)

# end