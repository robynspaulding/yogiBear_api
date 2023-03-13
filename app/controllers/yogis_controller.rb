class YogisController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

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

  def update
    yogi = Yogi.find_by(id: params[:id])
    yogi.update(
      name: params[:name] || yogi.name,
      rate: params[:rate] || yogi.rate,
      yoga_type: params[:yoga_type] || yogi.yoga_type,
      bio: params[:bio] || yogi.bio,
      contact: params[:contact] || yogi.contact,
      state: params[:state] || yogi.state,
      city: params[:city] || yogi.city,
      available_start_time: params[:available_start_time] || yogi.available_start_time,
      available_end_time: params[:available_end_time] || yogi.available_end_time,
      user_id: current_user.id,
      image: params[:image] || yogi.image
    )
    if yogi.save
      render json: {message: "Yogi Information Updated"}
    else
      render json: {message: "Only Admin users can edit Yogi information"}, status: :unauthorized
    end
  end

  def destroy
    yogi = Yogi.find_by(id: params[:id])
    yogi.destroy
    render json: {message: "Yogi Profile Successfully Deleted"}
  end
  
  def  yogi_params 
    params.permit(:name, :rate, :yoga_type, :bio, :contact, :state, :city, :available_start_time, :available_end_time, :image)
  end
end
