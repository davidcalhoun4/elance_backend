class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception, if: -> { request.format.html? }

  def current_dancer
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Dancer.find_by(id: decoded_token[0]["dancer_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  def current_employer
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Employer.find_by(id: decoded_token[0]["employer_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_dancer
  helper_method :current_employer

  def authenticate_dancer
    unless current_dancer
      render json: {}, status: :unauthorized
    end
  end

  def authenticate_employer
    unless current_employer
      render json: {}, status: :unauthorized
    end
  end

end
