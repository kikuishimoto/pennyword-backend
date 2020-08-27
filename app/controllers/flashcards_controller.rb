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
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def set_flashcard
        @flashcard = Flashcard.find(params[:id])
    end

    def flashcard_params
        params.require(:flashcard).permit(:title, :description, :image, :category_id)
    end

end
