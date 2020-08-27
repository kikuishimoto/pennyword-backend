class CategorySerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :description, :flashcards, :id
    has_many :flashcards
  end