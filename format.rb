class Format
    def self.check(expresion)
        hash = { 1 => ["<","(","{","["] , 2 => [">",")","}","]" ] , 3 => false , 4 => [0,0,0,0] }
        expresion = expresion
        expresion.each_char do |caracter|
            [0,1,2,3].each do |index|
                hash[4][index] += 1 if hash[1].at(index) == caracter
                if hash[2].at(index) == caracter then
                    if hash[4].at(index) == 0 then
                        hash[3] = true
                    end
                        hash[4][index] -= 1
                end
            end
        end
        hash[3] = true unless hash[4][0..3] == [0,0,0,0]
        puts "bien formateado" if hash[3] == false
        puts "mal formateado" unless hash[3] == false
    end
end
