class DesignationsController < ApplicationController
 before_action :set_designation, only: [:edit, :destroy, :update]
    def index 
      @designations = Designation.all 
    end
  
    def new 
      @designation = Designation.new
    end
  
    
  
    def create 
      @designation = Designation.new(designations_params)
      if @designation.save 
        redirect_to designations_path
      else  
        render 'new'
      end
    end
  
    def edit

    end
    
    def update 
      if @designation.update(designations_params)
        redirect_to designations_path
      else  
        render 'edit'
      end
    end
    
    def destroy 
      @designation.destroy 
      redirect_to designations_path
    end
  
    private 
  
    def designations_params
      params.require(:designation).permit(:name, :description)
    end
  
    def set_designation
      @designation = Designation.find(params[:id])
    end
end
