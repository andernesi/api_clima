class Comunicacao_weather

    
    #@key:7f6645212272a6db61cff3b4dd8cf512

    def buscar(cidade)
       
        @cidade = cidade
        

        url = "http://api.openweathermap.org/data/2.5/weather?&APPID=7f6645212272a6db61cff3b4dd8cf512&q=#{@cidade}"
         retorno = JSON.parse(Net::HTTP.get(URI(url)))
        


        
    end
end
