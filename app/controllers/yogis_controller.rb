class YogisController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    yogis = Yogi.all
    render json: yogis.as_json
  end

  def show
    yogi = Yogi.find_by(id: params[:id])
    render json: yogi.as_json
  end

  def create
    yogi = Yogi.new(yogi_params)
    yogi.user_id = current_user.id

    yogi.save
    render json: {message: "Yogi Profile Successfully Created"}
  end

  # def update
    
  # end

  def destroy
    yogi = Yogi.find_by(id: params[:id])
    yogi.destroy
    render json: {message: "Yogi Profile Successfully Deleted"}
  end
  def  yogi_params 
    params.permit(:name, :rate, :yoga_type, :bio, :contact, :state, :city, :available_start_time, :available_end_time)
  end
end
