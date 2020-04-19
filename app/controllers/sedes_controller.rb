class SedesController < ApplicationController
  before_action :set_sede, only: [:show, :update, :destroy]

  # GET /sedes
  def index
    @sedes = Sede.all
    json_response(@sedes)
  end

  # POST /sedes
  def create
    @sede = Sede.create!(sede_params)
    json_response(@sede, :created)
  end

  # GET /sedes/:id
  def show
    json_response(@sede)
  end

  # PUT /sedes/:id
  def update
    @sede.update(sede_params)
    head :no_content
  end

  # DELETE /sedes/:id
  def destroy
    @sede.destroy
    head :no_content
  end

  private

  def sede_params
    # whitelist params
    params.permit(:nombre, :distrito)
  end

  def set_sede
    @sede = Sede.find(params[:id])
  end
end
