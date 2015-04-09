class Api::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { status: :ok, user: user.as_json }
    else
      render status: 400, json: { status: :error, user: user.as_json.merge!(errors: user.errors.as_json) }
    end
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :date_of_birth, :postal_code, :news_letter)
  end
end