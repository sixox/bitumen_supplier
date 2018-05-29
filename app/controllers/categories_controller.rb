class CategoriesController < ApplicationController

 layout 'boot4'

  def index

    @categories = Category.sorted

  end

  def show
  end

  def new

    @category = Category.new
    @category_count = Category.count + 1

  end

 def create
   @category = Category.new(category_params)

   if @category.save
     flash[:notice] = "Category created successfully."
     redirect_to categories_path
   else
     @category_count = Category.count + 1
     render('new')
   end
 end

  def edit
  end

  def delete
  end
end



private

def category_params

  params.require(:category).permit(:name, :position, :visible)
end