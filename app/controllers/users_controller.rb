class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def edit
    @user = current_user

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to root_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else 
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_gym
    @user = current_user
    @user.gyms << Gym.find(params[:user][:gyms])

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else 
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_exercise
    @user = current_user
    @user.exercises << Exercise.find(params[:user][:exercise][:reps])

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else 
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to_user_url }
      format.json { head :no_content }
    end
  end

  #Included after the implementation of the authentication in order to have methods that create/edit a user's Profile information.  

  def edit_profile
    @user = current_user

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def update_profile
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to root_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else 
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end

