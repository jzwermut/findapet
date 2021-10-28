class BreedsController < ApplicationController

def index
	@breeds = Breed.all
end

def show
	@breed = Breed.find params[:id]
end

def new
	@breed = Breed.new
  @myBreeders = @current_user.breeders
end

def create
	@breed = Breed.create breed_params
	redirect_to breeds_path
end

def edit
	@breed = Breed.find params[:id]
  @myBreeders = @current_user.breeders
end

def update
  breed = Breed.find params[:id]
  breed.update breed_params
  redirect_to breed
end

def destroy
  breed = Breed.find params[:id]
  breed.destroy
  redirect_to breeds_path
end

private
  def breed_params # strong params (see docs)
    params.require(:breed).permit(:name, :origin, :photo, :description, :breeder_ids)
  end 

end
