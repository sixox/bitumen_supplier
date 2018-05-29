class PackagesController < ApplicationController

  layout 'boot4'

  def index

    @packages = Package.sorted

  end

  def show


  end

  def new

    @package = Package.new

  end

  def create
    @package = Package.new(packages_params)

    if @package.save
      flash[:notice] = "Package created successfully."
      redirect_to packages_path
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end
end



private

def packages_params

  params.require(:package).permit(:name, :content)
end
