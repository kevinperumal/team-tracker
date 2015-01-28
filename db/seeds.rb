5.times {User.create(name: Faker::Name.name, password: "test", password_confirmation: "test")}

5.times {Team.create(name: Faker::Commerce.product_name)}

position = ["PG", "SG", "SF", "PF", "C"]

40.times {
  average = rand(0..35)

  position = ["PG", "SG", "SF", "PF", "C"] if position.empty?

  Player.create(name: Faker::Name.name, average: average, position: position.shuffle.shift)
}