namespace :table do
  desc "Create Tables"
  task create: :environment do
    14.times do
  	  description = Faker::WorldCup.team
  	  status = Faker::Boolean.boolean
      table = "#{description} - #{status}"
  	  puts "Registering table -> #{table}"
  	  Table.create(description: description, status: status)
    end
  end
end
