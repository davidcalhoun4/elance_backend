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
      company_name: params[:company_name],
      employer_type: params[:employer_type],
      description: params[:description],
      image_url: params[:image_url]
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
    employer_id = params[:id]
    @employer = Employer.find_by(id: employer_id)

    @employer.email = params[:email] || @employer.email 
    @employer.password = params[:password] || @employer.password
    @employer.password_confirmation = params[:password_confirmation] || @employer.password_confirmation 
    @employer.company_name = params[:company_name] || @employer.company_name
    @employer.employer_type = params[:employer_type] || @employer.employer_type
    @employer.description = params[:description] || @employer.description
    @employer.image_url = params[:image_url] || @employer.image_url

    if @employer.save
      render "show.json.jb"
    else
      render json: { errors: @employer.errors.full_messages }, status: :unprocessable_entity
    end

  end


  
  def destroy
    employer = Employer.find_by(id: params[:id])
    employer.destroy
    render json: { message: "deleted!" }
  end


end
