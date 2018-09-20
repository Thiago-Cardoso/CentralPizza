namespace :clean_setup do
  desc "Drop table values and create again."
  task populate_models: :environment do

    # Cleaning datas
    ## Dependent Models - foreign key
    User.delete_all
    Order.delete_all
    Payment.delete_all
    OrderItem.delete_all
    OrderReport.delete_all
    Product.delete_all

    ## Independent Models
    Position.delete_all
    Table.delete_all
    CategoryProduct.delete_all

    # Running rake tasks to populate models
    ## Independent Models
    Rake::Task["position:create"].execute
    Rake::Task["table:create"].execute
    Rake::Task["category_product:create"].execute

    ## Dependent Models - foreign key
    Rake::Task["user:create"].execute
    Rake::Task["product:create"].execute
    Rake::Task["order:create"].execute
    Rake::Task["order_report:create"].execute
    Rake::Task["order_item:create"].execute
    Rake::Task["payment:create"].execute

  end
end
