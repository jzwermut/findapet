class BreedsController < ApplicationController

def index
	@breeds = Breed.all
end

def show
	@breed = Breed.find params[:id]
end

def new
	@breed = Breed.new
end

private
  def breed_params # strong params (see docs)
    params.require(:breed).permit(:name, :origin, :photo)
  end 

end
