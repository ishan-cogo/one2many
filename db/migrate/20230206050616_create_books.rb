class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.belongs_to :author, foreign_key: true
      t.date :published
      t.string :publication
      
      t.timestamps
    end
  end
end
