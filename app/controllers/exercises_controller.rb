class ExercisesController < ApplicationController
before_filter :authorize

  def index
    @exercises = Exercise.all

    respond_to do |format|
      format.html
      format.json { render json: @exercises }
    end
  end

  def new
    @exercise = Exercise.new

    respond_to do |format|
      format.html
      format.json { render json: @exercise }
    end
  end

  def create
    @exercise = Exercise.new(params[:exercise])

    respond_to do |format|
      if @exercise.save 
        format.html { redirect_to @exercise, notice: 'Exercise was successfully created.' }
        format.json { render json: @exercise, status: :created, location: @exercise }
      else 
        format.html { render action: 'new' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @exercise }
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @exercise }
    end
  end

  def update
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      if @exercise.update_attributes(params[:exercise])
        format.html { redirect_to @exercise, notice: 'Exercise was successfully updated.' }
        format.json { head :no_content }
      else 
        format.html { render action: 'edit' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to_exercise_url }
      format.json { head :no_content }
    end
  end
end

