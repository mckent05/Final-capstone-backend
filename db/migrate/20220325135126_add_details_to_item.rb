class AddDetailsToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :name, :string
    add_column :items, :description, :string
    add_column :items, :image, :string
    add_column :items, :price, :integer
    add_column :items, :city, :string
    add_column :items, :capacity, :string
    add_reference :items, :user, null: false, foreign_key: true
  end
end
