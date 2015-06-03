class TeamsController < ApplicationController
  # has_many :comments

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @team }
    end
  end
  #
  # def new
  #   @location = Location.new
  # end
  #
  # def create
  #   @team = Team.new(params[:location])
  #   if @t.save
  #     redirect_to @location, :notice => "Location Created!"
  #   else
  #     render :action => 'new'
  #   end
  # end

  def edit
    @team = Team.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @team }
  end
end



end
