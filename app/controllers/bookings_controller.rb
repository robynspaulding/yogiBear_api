class BookingsController < ApplicationController

  def index
    bookings = Booking.all
    render json: bookings.as_json
  end

  def show
    booking = Booking.find_by(id: params[:id])
    render json: booking.as_json
  end

  def create
    booking = Booking.create(booking_params)
    # booking.save
    if booking.save
      render json: {message: "Booking Successful"}
    else 
      render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # def update
    
  # end

  def destroy
    booking = Booking.find_by(id: params[:id])
    booking.destroy
    render json: {message: "Booking Successfully Deleted"}
  end
  
  def  booking_params 
    params.permit(:yogi_id, :user_id, :date, :start_time, :end_time, :total_price, :address, :city, :state, :event_type, :email, :in_person, :paid)
  end
end
