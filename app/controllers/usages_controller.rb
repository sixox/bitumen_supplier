class UsagesController < ApplicationController

  layout 'boot4'

  def index

    @usages = Usage.sorted

  end

  def new

    @usage = Usage.new

  end

  def create
    @usage = Usage.new(usages_params)

    if @usage.save
      flash[:notice] = "usage created successfully."
      redirect_to usages_path
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

def usages_params
  params.require(:usage).permit(:name, :content)

end