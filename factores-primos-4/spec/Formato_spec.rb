require 'rspec' 
require_relative '../model/Formato'

describe 'FormatoTest' do

  let(:formato) { Formato.new }  

  begin
    it 'formatear array con 2 y 2' do
      expect(formato.formatear([2,2])).to eq("2,2")
    end

    it 'formatear array con 2, 2, 2, 3, 3 y 5' do
      expect(formato.formatear([2,2,2,3,3,5])).to eq("2,2,2,3,3,5")
    end
    
    it 'formatear array vacio' do
      expect(formato.formatear([])).to eq("")
    end
  end
end
