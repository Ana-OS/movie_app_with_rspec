class AddColumnsToFilm < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :title, :string
    add_column :films, :gender, :string
    add_column :films, :rating, :integer
  end
end
