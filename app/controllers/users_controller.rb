class UsersController < ApplicationController
before_filter :authorize, :except => [:new, :create]

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
        format.html { redirect_to edit_profile_user_url, notice: 'Your profile was successfully updated.' }
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
        format.html { redirect_to edit_profile_user_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_exercise
    @user = current_user
    @user.exercises << Exercise.find(params[:user][:exercises])

    respond_to do |format|
      if @user.save
        format.html { redirect_to edit_profile_user_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_reps
    params[:exercises].each do |exercise_id, reps|
    user_exercise = UserExercise.find_or_initialize_by_user_id_and_exercise_id(current_user.id, exercise_id); 
    	user_exercise.reps = reps; 
    	user_exercise.save
    end

    redirect_to user_path(current_user), notice: 'Your reps were successfully updated.'

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to_user_url }
      format.json { head :no_content }
    end
  end

  def edit_profile
    @user = current_user
    @user_exercises = current_user.user_exercises

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def update_profile
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to edit_profile_user_url, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end