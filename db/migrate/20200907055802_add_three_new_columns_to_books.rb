class AddThreeNewColumnsToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :description, :text
    add_column :books, :created_at, :datetime
    add_column :books, :updated_at, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
