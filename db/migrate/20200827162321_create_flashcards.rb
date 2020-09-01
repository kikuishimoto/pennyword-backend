class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.string :title
      t.text :description
      t.string :image
      t.belongs_to :category
      t.timestamps
    end
  end
end
