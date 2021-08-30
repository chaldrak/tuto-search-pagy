class EmployeesController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @employees = pagy(Employee.all.order(name: :asc), page: params[:page], items: 10)
    @pagy, @employees = pagy(Employee.where(name: params[:q]), page: params[:page], items: 10) if params[:q]
  end
end
