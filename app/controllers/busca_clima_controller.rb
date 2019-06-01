class BuscaClimaController < ApplicationController

    require 'net/http'
    require 'json'
  
    def buscar
      render json: Comunicacao_weather.new.buscar(clima_params[:cidade]), status: :ok
    end
  
    
  
    def proximas_horas
        render json: ComunicacaoHora.new.proximas_horas(clima_params[:cidade]), status: :ok
    end

    # def proximos_dias
    
    # end

    private
    def clima_params
      params.permit(:cidade)
    end

  

end
