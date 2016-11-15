class EmpanadasController < ApplicationController
  
  def index
  end

  def show
  	@empanadashow = Empanada.find(params[:id])
  end

  def new
  end

  def create
  	#render plain: params[:empanadakey].inspect
  	@empanadakey = Empanada.new(empanada_params)

  	@empanadakey.save
  	redirect_to @empanadakey
  end

  private
  def empanada_params
  	datos = params.require(:empanadakey).permit(:carne, :pollo)
    numcarne = datos["carne"].to_i
  	numpollo = datos["pollo"].to_i
  	#platacarne = (numcarne*1500).to_i
  	#platapollo = numpollo*1000 
  	#numtotal = numcarne + numpollo
  	platatotal = (numcarne*1500)+(numpollo*1000)
  	#empanadaparam  = ActionController::Parameters.new({empakey:{carne: numcarne, pollo: numpollo, total: numtotal, moncarne: platacarne, monpollo: platapollo, montotal: platatotal}})
  	#empanadaparam.require(:empakey).permit(:carne, :pollo, :total, :moncarne, :monpollo, :montotal)
  	empanadaparam  = ActionController::Parameters.new({empakey:{carne: numcarne, pollo: numpollo, total: platatotal}})
  	empanadaparam.require(:empakey).permit(:carne, :pollo, :total)
  end

end
