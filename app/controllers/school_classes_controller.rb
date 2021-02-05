class SchoolClassesController < ApplicationController

  before_action :find_class, only: [:show, :edit, :update]

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new
    @class.update(class_params)
    redirect_to school_class_path(@class)
  end

  def update
    @class.update(class_params)
    redirect_to school_class_path(@class)
  end

  def find_class
    @class = SchoolClass.find(params[:id])
  end

  private
  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
