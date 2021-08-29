class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(name: :asc)
    @employees = Employee.where(name: params[:q]) if params[:q]
  end
end
