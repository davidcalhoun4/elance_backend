class Api::SessionsController < ApplicationController

  


  def employer_create
    employer = Employer.find_by(email: params[:email])
    if employer && employer.authenticate(params[:password])
      jwt = JWT.encode(
        {
          employer_id: employer.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: employer.email, employer_id: employer.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  def dancer_create
    dancer = Dancer.find_by(email: params[:email])
    if dancer && dancer.authenticate(params[:password])
      jwt = JWT.encode(
        {
          dancer_id: dancer.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: dancer.email, dancer_id: dancer.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

end
