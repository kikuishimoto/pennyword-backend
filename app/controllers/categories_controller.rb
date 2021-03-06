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
        @category = Category.new(category_params)
    
        if @category.save
          render json: @category, status: :created, location: @category
        else
          render json: @category.errors
        end
    end

    def update
        if @category.update(category_params)
          render json: @category
        else
          render json: @category.errors
        end
    end

    def destroy
        @category.destroy
    end

    private

    def set_category
        @category = Category.find(params[:id])
    end

    def category_params
        params.require(:category).permit(:title, :description)
    end

end
