class Formato
    
  def formatear(array)
    formateado = ""
    
    array.each do |x|
      formateado += x.to_s + ","
    end
    
    if formateado.length > 0
      formateado = formateado[0...-1]
    end
    
    return formateado
  end
end
