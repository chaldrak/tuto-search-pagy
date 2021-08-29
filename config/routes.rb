Rails.application.routes.draw do
  get 'employees/index'
  root 'employees#index'
  resources :employees
end
