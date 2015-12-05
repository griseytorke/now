#class AddNameToUsers < ActiveRecord::Migration
 # def change
  #end
#end

class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  end
end