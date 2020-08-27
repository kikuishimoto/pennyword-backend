class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :update, :destroy]

    def index
        @categories = Category.all
        options = {
          include: [:flashcards]
        }
        render json: CategorySerializer.new(@categories, options)
    end

    def show
        render json: CategorySerializer.new(@category)
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

end
