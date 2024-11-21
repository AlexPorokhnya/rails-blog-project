class Post < ActiveRecord::Migration[7.0]
  def change
    create_table :your_table_name do |t|
      t.string :title
      t.integer :body

      t.timestamps
    end
  end
end
