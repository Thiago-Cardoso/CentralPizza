namespace :user do
  desc "Create Users"
  task create: :environment do
    48.times do
      name = Faker::Name.name
  	  email = Faker::Internet.email
  	  password = 123456
  	  phone_number = Faker::Base.numerify('2864150###')
  	  position_id = Position.ids.sample
  	  user = "#{name} - #{email}"
  	  puts "Registering user -> #{user}"
      User.create(name: name, email: email, password: password, phone_number: phone_number, position_id: position_id)
	  end
  end
end
