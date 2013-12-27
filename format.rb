class Validador
    
  def self.is_correct?(expresion)
    caracteres = {:open=>["<","(","{","["],:close=>[">",")","}","]"]}
    respuesta,encontrar = true , [nil]
    expresion.each_char do |caracter|
      (caracteres[:open].size).times do |index|
        encontrar << caracteres[:close][index] if caracteres[:open][index] == caracter
        if caracteres[:close][index] == caracter
          (caracter == encontrar.last)?  encontrar.pop : respuesta = false
        end
      end
    end
    respuesta = false if encontrar != [nil]
    puts (respuesta == true)? "correctamente formateado":"incorrectamente formateado"
  end
end
