class EmployeeDetailsController < ApplicationController
    before_action :set_employeedetail, only: [:edit, :update, :destroy, :show]
    def index
      @employee_details = EmployeeDetail.all
    end
  
    def new 
      @employee_detail = EmployeeDetail.new
    end
  
    def show
  
    end
  
    def edit 
    end
  
    def create 
      @employee_detail = EmployeeDetail.new(employeedetails_params)
      if @employee_detail.save 
        redirect_to employee_details_path
      else  
        render 'new'
      end
    end
  
    def update 
      if @employee_detail.update(employeedetails_params)
        redirect_to employee_details_path
      else  
        render 'edit'
      end
    end
  
    def destroy 
      @employee_detail.destroy 
      redirect_to employee_details_path
    end
  
    private 
  
    def set_employeedetail  
      @employee_detail = EmployeeDetail.find(params[:id])
    end
  
    def employeedetails_params 
      params.require(:employee_detail).permit(:contact_no, :emergency_contact_number, :designation_id, :employee_id, :manager_id, :blood_group, :project_id, :work_experience)
    end
end
  