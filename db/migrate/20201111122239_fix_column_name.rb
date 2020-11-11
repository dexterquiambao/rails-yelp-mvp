class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :conent, :content
  end
end
