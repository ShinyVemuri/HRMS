Rails.application.routes.draw do
  get 'managers/index'
  get 'addresses/index'
  get 'settings/index'
  get 'project_managements/index'
  get 'employees/index'
  get 'designations/index'
  get 'leave_types/index'
  get 'projects/index'
  get 'holidays/index'
  get 'employee_details/index'
  devise_for :employees
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :holidays
resources :leave_types
resources :designations
resources :projects
resources :employees
resources :project_managements
resources :settings
resources :employee_details
resources :addresses
resources :managers

  # Defines the root path route ("/")
  root "home#index"

  get 'administration',to: 'home#administration'

  get 'dash',to: 'home#dash'

  get 'leave',to: 'home#leave'
  
  get 'attendance',to: 'home#attendance'

  get 'setting',to: 'home#setting'

  get 'employeeadmin',to: 'home#employeeadmin'

  get 'projectadmin',to: 'home#projectadmin'

  get 'hr',to: 'home#hr'
end
