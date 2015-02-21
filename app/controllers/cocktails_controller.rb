class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.doses.push Dose.new   #line added to integrate dose form in cocktail form
    #@cocktail.doses.build  #---- same as line above -----
  end

  def edit
  end


  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_doses_path(@cocktail)
    else
      render :new
    end
  end

  def update

    if @cocktail.update(cocktail_params)
      redirect_to cocktail_doses_path(@cocktail), notice: 'Cocktail was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    # to integrate dose form in cocktail form ----------------
    # added doses_attributes to permit with array of params
    params.require(:cocktail).permit(:name, :picture, doses_attributes:[:description, :ingredient_id])
  end
end
