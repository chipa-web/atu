class NationalsController < ApplicationController
    def index
        @nationals = National.all
    end
 def new
    @National = National.new
  end

  def create
    national = National.new(national_params)
    if national.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @national = National.find(params[:id])
  end

  def update
    national = National.find(params[:id])
    if national.update(national_params)
      redirect_to :action => "show", :id => national.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    national = National.find(params[:id])
    national.destroy
    redirect_to action: :index
  end

  private
  def national_params  
    params.require(:national).permit(:name, :spot, :food)
  end
end
