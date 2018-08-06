namespace :position do
  desc "Create Positions"
  task create: :environment do
    14.times do
  	  name = Faker::Job.position
  	  description = Faker::Job.title
  	  description += " - " + Faker::Job.field
  	  position = "#{name}"
  	  puts "Registering position -> #{position}"
  	  Position.create(name: name, description: description)
    end
  end
end
