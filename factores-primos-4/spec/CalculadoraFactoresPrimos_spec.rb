require 'rspec' 
require_relative '../model/CalculadoraFactoresPrimos'

describe 'CalculadoraFactoresPrimosTest' do

  let(:calculadora) { CalculadoraFactoresPrimos.new }  

  begin
    it 'primos de 4 son 2 y 2' do
      expect(calculadora.calcular("4")).to eq([2, 2])
    end

    it 'primos de 360 son 2, 2, 2, 3, 3 y 5' do
      expect(calculadora.calcular("360")).to eq([2, 2, 2, 3, 3, 5])
    end
  
    it '1 no tiene primos' do
      expect(calculadora.calcular("1")).to eq([])
    end
  
    it 'A no es valido, da excepcion' do
      expect{calculadora.calcular("A")}.to raise_exception
    end
  end
end
