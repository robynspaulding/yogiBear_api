class BookingsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

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
    booking.user_id = current_user.id
      
    
    if booking.save
      render json: {message: "Booking Successful"}
    else 
      render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    booking = Booking.find_by(id: params[:id])
    booking.update(
      yogi_id: params[:yogi_id] || booking.yogi_id, 
      date: params[:date] || booking.date, 
      start_time: params[:start_time] || booking.start_time, 
      end_time: params[:end_time] || booking.end_time, 
      total_price: params[:total_price] || booking.total_price, 
      address: params[:address] || booking.address, 
      city: params[:city] || booking.city, 
      state: params[:state] || booking.state, 
      event_type: params[:event_type] || booking.event_type, 
      email: params[:email] || booking.email, 
      in_person: params[:in_person] || booking.in_person, 
      paid: params[:paid] || booking.paid
    )
    render json: {message: "Booking Information Updated"}
  end

  def destroy
    booking = Booking.find_by(id: params[:id])
    booking.destroy
    render json: {message: "Booking Successfully Deleted"}
  end
  
  def  booking_params 
    params.permit(:yogi_id, :date, :start_time, :end_time, :total_price, :address, :city, :state, :event_type, :email, :in_person, :paid)
  end
end
