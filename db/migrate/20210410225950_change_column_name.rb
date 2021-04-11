class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :gender, :genre
  end
end
