class TagsController < ApplicationController

  layout 'boot4'

  def index

    @tags = Tag.sorted

  end

  def new

    @tag = Tag.new

  end

  def create
    @tag = Tag.new(tags_params)

    if @tag.save
      flash[:notice] = "tag created successfully."
      redirect_to tags_path
    else
      render('new')
    end
  end

  def show
  end

  def edit
  end

  def delete
  end
end


private



def tags_params

  params.require(:tag).permit(:name, :content)


end
