class BuscaClimaController < ApplicationController

    require 'net/http'
    require 'json'
  
    def buscar
      render json: Comunicacao_weather.new.buscar(clima_params[:cidade]), status: :ok
    end
  
    private
  
    def clima_params
      params.permit(:cidade)
    end

end
