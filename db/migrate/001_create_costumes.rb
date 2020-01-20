# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec

class CreateCostumes < ActiveRecord::Migration[4.2]
    def change
        create_table :costumes do |t|
            t.string :name 
            t.float :price
            t.string :size
            t.string :image_url
            t.timestamps 
        end 
    end 
end 


# == 1 CreateCostumes: migrating ================================================
# rake aborted!
# StandardError: An error has occurred, this and all later migrations canceled:

# wrong number of arguments (given 0, expected 1..2)
# /Users/tcarney/.rvm/gems/ruby-2.6.1/gems/activerecord-6.0.1/lib/active_record/migration/compatibility.rb:100:in `create_table'
# /Users/tcarney/Dev/1/inbox/active-record-costume-store-lab-dumbo-web-010620/db/migrate/001_create_costumes.rb:13:in `change'