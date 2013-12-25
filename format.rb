class Format
    def self.check(expresion)
        hash = { 1 => ["<","(","{","["] , 2 => [">",")","}","]" ] , 3 => false , 4 => [0,0,0,0] }
        expresion = expresion
        expresion.each_char do |ent|
            [0,1,2,3].each do |x|
                hash[4][x] += 1 if hash[1].at(x) == ent
                if hash[2].at(x) == ent then
                    if hash[4].at(x) == 0 then
                        hash[3] = true
                    end
                        hash[4][x] -= 1
                end
            end
        end
        hash[3] = true unless hash[4][0..3] == [0,0,0,0]
        puts "bien formateado" if hash[3] == false
        puts "mal formateado" unless hash[3] == false
    end
end
