class CreateDialies < ActiveRecord::Migration
  def change
    create_table :dialies do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
