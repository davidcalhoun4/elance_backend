class Api::DancersController < ApplicationController

  def index
    @dancers = Dancer.all
    render "index.json.jb"
  end

  def create
    @dancer = Dancer.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      first_name: params[:first_name],
      last_name: params[:last_name],
      image_url: params[:image_url],
      resume: params[:resume],
      about: params[:about],
      video: params[:video],
      genre_id: params[:genre_id]
    )
    if @dancer.save
      render "show.json.jb"
    else
      render json: { errors: @dancer.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @dancer = Dancer.find_by(id: params[:id])
    render "show.json.jb"
  end



end
