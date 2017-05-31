require 'sinatra'
require_relative 'model/CalculadoraFactoresPrimos'

calculadora = CalculadoraFactoresPrimos.new

get '/primos' do
  begin
    factores = calculadora.calcular(params['x']).reverse
    "#{factores}"
  rescue Exception
    status 400
  end
end

post '/primos' do
  begin
    factores = calculadora.calcular(params['x'])
    "#{factores}"
  rescue Exception
    status 400
  end
end
