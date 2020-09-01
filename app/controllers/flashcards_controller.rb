class FlashcardsController < ApplicationController
    before_action :set_flashcard, only: [:show, :update, :destroy]

    def index
        @flashcards = Flashcard.all
        options = {
          include: [:category]
        }
        render json: FlashcardSerializer.new(@flashcards, options)
    end

    def show
        render json: FlashcardSerializer.new(@flashcard)
    end

    def create
        flashcard = Flashcard.new(flashcard_params) 
      
        category = Category.find_or_create_by(title: params[:category])
        flashcard.category = category
        
        if flashcard.save
          render json: FlashcardSerializer.new(flashcard)
        else
          render json: flashcard.errors
        end
    end

    def update
        if @flashcard.update(flashcard_params)
          render json: @flashcard
        else
          render json: @flashcard.errors
        end
    end

    def destroy
      flashcard = Flashcard.find(params[:id])
      flashcard.destroy
      render json: {message: "DELETED"}
    end

    private

    def set_flashcard
        @flashcard = Flashcard.find(params[:id])
    end

    def flashcard_params
        params.require(:flashcard).permit(:title, :description, :image, :category_id, :category) #:category_id
    end

end
