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

  def update
    dancer_id = params[:id]
    @dancer = Dancer.find_by(id: dancer_id)

    @dancer.email = params[:email] || @dancer.email 
    @dancer.password = params[:password] || @dancer.password
    @dancer.password_confirmation = params[:password_confirmation] || @dancer.password_confirmation
    @dancer.first_name = params[:first_name] || @dancer.first_name
    @dancer.last_name = params[:last_name] || @dancer.last_name
    @dancer.image_url = params[:image_url] || @dancer.image_url
    @dancer.resume = params[:resume] || @dancer.resume
    @dancer.about = params[:about] || @dancer.about
    @dancer.video = params[:video] || @dancer.video
    @dancer.genre_id = params[:genre_id] || @dancer.genre_id

    if @dancer.save 
      render "show.json.jb"
    else
      render json: { errors: @dancer.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    dancer = Dancer.find_by(id: params[:id])
    dancer.destroy
    render json: { message: "deleted!" } 
  end




end
