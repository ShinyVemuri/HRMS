class ProjectManagementsController < ApplicationController
  before_action :set_projectmanagement, only: [:edit, :destroy, :update]
  
  def index 
    @project_managements = ProjectManagement.all 
  end

  def new 
    @project_management = ProjectManagement.new
  end

  def edit
    
  end

  def create 
    @project_management = ProjectManagement.new(projectmanagements_params)
    if @project_management.save 
      redirect_to project_managements_path
    else  
      render 'new'
    end
  end

  def update 
    if @project_management.update(projectmanagements_params)
      redirect_to project_managements_path
    else  
      render 'edit'
    end
  end
  
  def destroy 
    @project_management.destroy
    redirect_to project_managements_path
  end

  private 

  def set_projectmanagement
    @project_management = ProjectManagement.find(params[:id])
  end

  def projectmanagements_params
    params.require(:project_management).permit(:project_name, :client, :manager_id, :description, :clients_time_zone, :shift_info, :project_type)
  end
end
