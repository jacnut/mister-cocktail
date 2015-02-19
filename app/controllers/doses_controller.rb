class DosesController < ApplicationController
  before_action :find_cocktail
  before_action :set_dose, only: [:show, :edit, :update, :destroy]

  def index
    @doses = @cocktail.doses
  end

  def show
    @cocktail.doses(@dose)
  end

  def new
    @dose = Dose.new
  end

  def edit
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
    redirect_to @cocktail, notice: 'Dose was successfully created.'
      else
        render :new
      end
  end

  def update
      if @dose.update(dose_params)
        redirect_to cocktail_doses_path(@cocktail), notice: 'Dose was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @dose.destroy
      redirect_to cocktail_doses_path(@cocktail), notice: 'Dose was successfully destroyed.'
  end

  private

    def set_dose
      @dose = @cocktail.doses.find(params[:id])
    end

    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end

    def find_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

end
