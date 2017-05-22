class CalculadoraFactoresPrimos
    
  def calcular(x)
    valor = x.to_i
    primos = Array.new
    
    if valor.to_s == x
      i = 2
      while i <= valor do
        if valor % i == 0
          primos << i
          valor /= i
          i = 1
        end
        i += 1
      end
      return primos
    end
    
    raise Exception, "El valor introducido no es un numero"
  end
end
