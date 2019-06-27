class comunicacao_dias

    def proximosDias(cidade)
        @cidade = cidade
        url = "http://api.openweathermap.org/data/2.5/forecast?&APPID=7f6645212272a6db61cff3b4dd8cf512&q=#{@cidade}&lang=pt_br"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        
    end
    
end