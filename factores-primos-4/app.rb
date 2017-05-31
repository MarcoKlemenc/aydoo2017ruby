require 'sinatra'
require_relative 'model/CalculadoraFactoresPrimos'
require_relative 'model/Formato'

calculadora = CalculadoraFactoresPrimos.new
formato = Formato.new

get '/primos' do
  begin
    factores = calculadora.calcular(params['x']).reverse
    factoresFormateados = formato.formatear(factores)
    "#{factoresFormateados}"
  rescue Exception
    status 400
    "400 Bad Request"
  end
end

post '/primos' do
  begin
    factores = calculadora.calcular(params['x'])
    factoresFormateados = formato.formatear(factores)
    "#{factoresFormateados}"
  rescue Exception
    status 400
    "400 Bad Request"
  end
end
