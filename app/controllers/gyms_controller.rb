class GymsController < ApplicationController
before_filter :authorize

  def index
    @gyms = Gym.all

    respond_to do |format|
      format.html
      format.json { render json: @gyms }
    end
  end

  def new
    @gym = Gym.new

    respond_to do |format|
      format.html
      format.json { render json: @gym }
    end
  end

  def create
    @gym = Gym.new(params[:gym])

    respond_to do |format|
      if @gym.save 
        format.html { redirect_to @gym, notice: 'Urban Gym was successfully created.' }
        format.json { render json: @gym, status: :created, location: @gym }
      else 
        format.html { render action: 'new' }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @gym = Gym.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @gym }
    end
  end

  def edit
    @gym = Gym.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @gym }
    end
  end

  def update
    @gym = Gym.find(params[:id])

    respond_to do |format|
      if @gym.update_attributes(params[:gym])
        format.html { redirect_to @gym, notice: 'Urban Gym was successfully updated.' }
        format.json { head :no_content }
      else 
        format.html { render action: 'edit' }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gym = Gym.find(params[:id])
    @gym.destroy

    respond_to do |format|
      format.html { redirect_to_gym_url }
      format.json { head :no_content }
    end
  end
end

