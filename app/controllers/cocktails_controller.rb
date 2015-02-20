class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  # GET /cocktails
  # GET /cocktails.json
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  # GET /cocktails/1.json
  def show
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
    @cocktail.doses.push Dose.new
    @cocktail.doses.build
  end

  # GET /cocktails/1/edit
  def edit
  end

  # POST /cocktails
  # POST /cocktails.json
  def create
    @cocktail = Cocktail.new(cocktail_params)
    # binding.pry
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end

  end

  # PATCH/PUT /cocktails/1
  # PATCH/PUT /cocktails/1.json
  def update

    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cocktails/1
  # DELETE /cocktails/1.json
  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cocktail_params
    params.require(:cocktail).permit(:name, doses_attributes:[:description, :ingredient_id])
  end
end
