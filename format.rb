class Validador
    def self.correcta?(expresion)
        caracteres = {:open=>["<","(","{","["],:close=>[">",")","}","]"]}
        respuesta,encontrar = true , [nil]
        expresion.each_char do |caracter|
            (caracteres[:open].size).times do |index|
               encontrar << caracteres[:close][index] if caracteres[:open][index] == caracter
               if caracteres[:close][index] == caracter then
                  if caracter == encontrar.last then
                    encontrar.pop
                  else
                    respuesta = false
                  end
               end
            end
        end
        respuesta = false if encontrar != [nil]
        puts (respuesta == true)? "correctamente formateado":"incorrectamente formateado"
    end
end
