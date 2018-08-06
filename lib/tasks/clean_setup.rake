namespace :clean_setup do
  desc "Drop table values and create again."
  task populate_models: :environment do
  # Cleaning datas
  Position.delete_all
  User.delete_all

  # Running rake tasks to populate models
  Rake::Task["position:create"].execute
  Rake::Task["user:create"].execute
  end
end
