class ProyectsController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23"

  def new
    @proyect = Proyect.new
  end

  

  def create
    puts params
    @proyect = Proyect.new(name: params[:proyect][:name],
    description: params[:proyect][:description],
    start_date: params[:proyect][:start_date],
    end_date: params[:proyect][:end_date],
    status: params[:proyect][:status])

    if @proyect.save!
      flash[:notice]="succesfully saved"
      redirect_to proyects_new_path
    else
      flash[:error]= "An error ocurred saving the proyect"
      redirect_to proyects_new_path

    end
  end

  def index

    if params[:search]
      @proyects= Proyect.where(status: params[:search])
    else
      @proyects = Proyect.all
    end
  end
end
