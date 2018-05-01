# frozen_string_literal: true

class InstrumentsController < OpenReadController
  before_action :set_instrument, only: %i[show update destroy]

  # GET /instruments
  def index
    @instruments = Instrument.all

    render json: @instruments
  end

  # GET /user instruments
  def my_index
    @instruments = current_user.instruments.all
  end

  # GET /instruments/1
  def show
    render json: @instrument
  end

  # POST /instruments
  def create
    @instrument = current_user.instruments.build(instrument_params)

    if @instrument.save
      render json: @instrument, status: :created
    else
      render json: @instrument.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instruments/1
  def update
    if @instrument.update(instrument_params)
      render json: @instrument
    else
      render json: @instrument.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instruments/1
  def destroy
    @instrument.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_instrument
    @instrument = current_user.instruments.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def instrument_params
    params.require(:instrument).permit(:instrument, :genre)
  end
end
