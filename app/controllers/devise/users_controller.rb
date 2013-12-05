class Devise::UsersController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  # GET /questions
  # GET /questions.json
  def index
    @users = Question.users

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @user = current_user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
  end


end
