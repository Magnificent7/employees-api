class Api::V1::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render :index
  end

  def show
    @employee = Employee.find(params[:id])
    render :show
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      birthdate: params[:birthdate],
      ssn: params[:ssn])
    render :show
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      birthdate: params[:birthdate],
      ssn: params[:ssn]
      )
    render :show
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    @employees = Employee.all
    render :index
  end

end
