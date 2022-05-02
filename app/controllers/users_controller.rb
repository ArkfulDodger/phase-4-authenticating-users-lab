class UsersController < ApplicationController
  # GET /me
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: 'Not authrorized' }, status: :unauthrorized
    end
  end
end
