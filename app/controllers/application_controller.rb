class ApplicationController < ActionController::API
  before_action :authenticate_request

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  attr_reader :current_user

  private

  def not_found
    render status: :not_found, json: ''
  end

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result 
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user 
  end
end
