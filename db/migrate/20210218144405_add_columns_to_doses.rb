class AddColumnsToDoses < ActiveRecord::Migration[6.0]
  def change
    add_column :doses, :description, :string
    add_reference :doses, :ingredient, null: false, foreign_key: true
    add_reference :doses, :cocktail, null: false, foreign_key: true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
