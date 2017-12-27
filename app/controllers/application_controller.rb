class ApplicationController < ActionController::API
  #before_action :authenticate_request

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActiveRecord::RecordInvalid,  with: :unprocessable_entity


  # attr_reader :current_user

  private

  def not_found
    render status: :not_found, json: ''
  end

  def unprocessable_entity(error)
    render json: { errors: error.message }, status: :unprocessable_entity
  end

  # def authenticate_request
  #   @current_user = AuthorizeApiRequest.call(request.headers).result 
  #   render json: { error: 'Not Authorized' }, status: 401 unless @current_user 
  # end
end
