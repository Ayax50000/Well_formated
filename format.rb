class Format
    def self.check(expresion)
        correcto , incorrecto = "correctamente formateado","incorrectamente formateado"
        caracteres, respuesta , encontrar = { :open => ["<","(","{","["] , :close => [">",")","}","]" ] }, correcto , [""]
        expresion.each_char do |caracter|
            [0,1,2,3].each do |index|
               encontrar << caracteres[:close][index] if caracteres[:open][index] == caracter
               if caracteres[:close][index] == caracter then
                  if caracter == encontrar.last then
                    encontrar.pop
                  else
                    respuesta = incorrecto
                  end
               end
            end
        end
        respuesta = incorrecto if encontrar != [""]
        puts respuesta
    end
end
