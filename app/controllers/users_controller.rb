class UsersController < ApplicationController
  def create
    user = User.create(user_params)

    render json: user_created(user), status: :created
  end

  def index
    users = User.all

    render json: users, status: :ok
  end

  def show
    user = User.find(params[:id])

    render json: user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :cpf, :birthdate, :gender,
                                 :photo)
  end
end
