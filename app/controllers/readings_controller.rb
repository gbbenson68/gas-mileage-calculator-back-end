# frozen_string_literal: true

class ReadingsController < ProtectedController
  before_action :set_reading, only: %i[index show update destroy]

  # GET /readings
  def index
    @readings = current_user.reading.all

    render json: @readings
  end

  # GET /readings/1
  def show
    render json: @reading
  end

  # POST /readings
  def create
    @reading = current_user.reading.new(reading_params)

    if @reading.save
      render json: @reading, status: :created, location: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /readings/1
  def update
    if @reading.update(reading_params)
      render json: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # DELETE /readings/1
  def destroy
    @reading.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reading
    @reading = current_user.reading.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def reading_params
    params.require(:reading).permit(:transaction_date,
                                    :odometer_reading,
                                    :odometer_units,
                                    :price,
                                    :price_units,
                                    :comment,
                                    :user_id)
  end
end
