class HomeController < ApplicationController
  def index
    
  end
  def employeeadmin
    @employees = Employee.all
  end
  def holidays
    @holiday = Holiday.all
  end 
  def leavetypes
    @leave_types = Leave_type.all
  end
  def designations
    @designation = Designation.all
  end
  def projects

  end 
end
