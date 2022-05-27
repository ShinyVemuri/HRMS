class AddressesController < ApplicationController
  before_action :set_address, only: [:edit, :update, :destroy, :show]
    def index
      @addresses = Address.all
    end
  
    def new 
      @address = Address.new
    end
  
    def show
  
    end
  
    def edit 
    end
  
    def create 
      @address = Address.new(addresses_params)
      if @address.save 
        redirect_to addresses_path
      else  
        render 'new'
      end
    end
  
    def update 
      if @address.update(addresses_params)
        redirect_to addresses_path
      else  
        render 'edit'
      end
    end
  
    def destroy 
      @address.destroy 
      redirect_to addresses_path
    end
  
    private 
  
    def set_address  
      @address = Address.find(params[:id])
    end
  
    def addresses_params 
      params.require(:address).permit(:address, :street, :city, :state, :pincode, :country, :employee_id)
    end
end
