class Api::EmployersController < ApplicationController

  before_action :authenticate_employer, except: [:index, :show, :create]

  def index
    @employers = Employer.all 
    render "index.json.jb"
  end


  def create
    @employer = Employer.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      company_name: params[:company_name]
      # employer_type: params[:employer_type],
      # description: params[:description],
      # image_url: params[:image_url]
    )
    if @employer.save 
      render "show.json.jb"
    else 
      render json: { errors: @employer.errors.full_messages }, status: :bad_request
    end
  end



  def show
    @employer = Employer.find_by(id: params[:id])
    render "show.json.jb"
  end



  def update
    @employer = Employer.find_by(id: params[:id])

    if @employer == current_employer

      @employer.email = params[:email] || @employer.email 
      @employer.company_name = params[:company_name] || @employer.company_name
      @employer.employer_type = params[:employer_type] || @employer.employer_type
      @employer.description = params[:description] || @employer.description
      @employer.image_url = params[:image_url] || @employer.image_url

      if @employer.save
        render "show.json.jb"
      else
        render json: { errors: @employer.errors.full_messages }, status: :unprocessable_entity
      end

    else
      render json: { errors: "you are not authorized to update this user" }, status: :unauthorized
    end

  end


  
  def destroy
    @employer = Employer.find_by(id: params[:id])

    if @employer == current_employer
      @employer.destroy
      render json: { message: "employer deleted!" }
      # all_posts = Post.where("employer_id = ?", @employer.id)
      # all_posts.destroy 
    else
      render json: { errors: "you are not authorized to update this user" }, status: :unauthorized
    end

  end


end
