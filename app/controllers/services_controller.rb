class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  # GET /suppliers/:id/services
  # GET /suppliers/:id/services.json
  def supplier_services
    @services = Supplier.find(params[:id]).services
    render :action => 'services.json'
  end
end
