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
        @flashcard = Flashcard.new(flashcard_params)

        if @flashcard.save
          render json: @flashcard, status: :created, location: @flashcard
        else
          render json: @flashcard.errors, status: :unprocessable_entity
        end
    end

    def update
        if @flashcard.update(flashcard_params)
          render json: @flashcard
        else
          render json: @flashcard.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @flashcard.destroy
    end

    private

    def set_flashcard
        @flashcard = Flashcard.find(params[:id])
    end

    def flashcard_params
        params.require(:flashcard).permit(:title, :description, :image, :category_id)
    end

end
