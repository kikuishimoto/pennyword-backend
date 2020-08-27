class AddAssociationToFlashcard < ActiveRecord::Migration[6.0]
  def change
    add_reference :flashcards, :category, null: false, foreign_key: true
  end
end
